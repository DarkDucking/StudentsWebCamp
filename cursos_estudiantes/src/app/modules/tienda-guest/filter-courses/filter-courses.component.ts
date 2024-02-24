import { Component, OnInit } from '@angular/core';
import { TiendaGuestService } from '../service/tienda-guest.service';
import { CartService } from '../service/cart.service';
import { ActivatedRoute, Router } from '@angular/router';

declare var $:any;
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
  LEVELS:any = [];
  IDIOMAS:any = [];

  selected_option:number=1;

  LISTCOURSES: any = [];
  selected_categories: any = [];
  search: any = null;
  user: any = null;


  idiomas_selected:any = [];
  levels_selected:any = [];

  rating_selected:number = 0;
 
  constructor(
    public tiendaGuestService: TiendaGuestService,
    public cartService: CartService,
    public router: Router,
    public actived: ActivatedRoute,
  ) { }

  ngOnInit(): void {
    
    this.user = this.tiendaGuestService.authService.user;
    this.tiendaGuestService.listConfig().subscribe((resp:any) => {
      console.log(resp);
      this.CATEGORIES = resp.categories;
       this.LEVELS = resp.levels;
      this.IDIOMAS = resp.idiomas;

      setTimeout(() => {
        showMoreBtn();
      }, 50);
    })

    
    this.actived.queryParams.subscribe((resp:any) => {
      console.log(resp);
      this.search = resp.search;
      this.listCourses();
      // console.log(this.search);
    })
    
  }

  addOption(value:number){
    this.selected_option = value;
    
  }

  listCourses(){
    console.log(this.search);
    let data = {
      search: this.search,
      selected_categories: this.selected_categories,
      idiomas_selected: this.idiomas_selected,
      levels_selected: this.levels_selected,
      rating_selected: this.rating_selected,
    }
    this.tiendaGuestService.listCourses(data).subscribe((resp:any) => {
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
  addIdiomas(IDIOMA:any){
    let INDEX = this.idiomas_selected.findIndex((item:any) => IDIOMA == item);
    if(INDEX != -1){
      this.idiomas_selected.splice(INDEX,1);
    }else{
      this.idiomas_selected.push(IDIOMA);
    }
    this.listCourses();
  }

  addLevels(LEVELE:any){
    let INDEX = this.levels_selected.findIndex((item:any) => LEVELE == item);
    if(INDEX != -1){
      this.levels_selected.splice(INDEX,1);
    }else{
      this.levels_selected.push(LEVELE);
    }
    this.listCourses();
  }

  selectedRating(value:number){
    this.rating_selected = value;
    this.listCourses();
  }
    
}
