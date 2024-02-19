import { Component, OnInit } from '@angular/core';
import { TiendaGuestService } from '../service/tienda-guest.service';
import { CartService } from '../service/cart.service';
import { Router } from '@angular/router';

declare function showMoreBtn():any;
declare function alertWarning([]): any;
declare function alertDanger([]): any;
declare function alertSuccess([]): any;
@Component({
  selector: 'app-filter-courses',
  templateUrl: './filter-courses.component.html',
  styleUrls: ['./filter-courses.component.css']
})
export class FilterCoursesComponent implements OnInit {

  CATEGORIES: any = [];
  SEMESTRES: any = [];
  IDIOMAS: any = [];

  selected_option:number=1;

  LISTCOURSES: any = [];
  selected_categories: any = [];
  search: any = null;
  user: any = null;

  constructor(
    public tiendaGuestService: TiendaGuestService,
    public cartService: CartService,
    public router: Router,
  ) { }

  ngOnInit(): void {
    this.user = this.cartService.authService.user,

    setTimeout(() => { 
    }, 50);

    this.tiendaGuestService.listConfig().subscribe((resp:any) => {
      console.log(resp);
      this.CATEGORIES = resp.categories;
      this.SEMESTRES = resp.semestres;
      this.IDIOMAS = resp.idiomas;

      setTimeout(() => { 
        showMoreBtn();
      }, 50);
    })

    this.listCourses();
  }

  addOption(value:number){
    this.selected_option = value;
  }

  listCourses(){
    let data = {
      search: this.search,
      selected_categories: this.selected_categories,
    }
    this.tiendaGuestService.listCourses(data).subscribe((resp:any)=>{
      console.log(resp);
      this.LISTCOURSES = resp.courses.data;
    })
  }

  addCart(LANDING_COURSE:any){
    if(!this.user){
      alertWarning("NECESITAS REGISTRARTE EN LA TIENDA");
      this.router.navigateByUrl("auth/login");
      return;
    }
    
    let data = {
      course_id: LANDING_COURSE.id,
      
    };

    this.cartService.registerCart(data).subscribe((resp:any) => {
      console.log(resp);
      if(resp.message == 403){
        alertDanger(resp.message_text);
        return;
      }else{
        this.cartService.addCart(resp.cart);
        alertSuccess("EL CURSO SE AGREGÓ A TU LISTA EXITOSAMENTE");
      }
    })
  }

  addCategorie(ID_CATEGORIE:any){
    let INDEX = this.selected_categories.findIndex((item:any) => ID_CATEGORIE == item);

    if (INDEX != -1){
      this.selected_categories.splice(INDEX, 1);
    }else{
      this.selected_categories.push(ID_CATEGORIE);
    }
    // console.log(this.selected_categories);
    this.listCourses();
  }
}
