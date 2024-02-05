import { Component, OnInit } from '@angular/core';
import { HomeService } from './services/home.service';
import { CartService } from '../tienda-guest/service/cart.service';
import { Router } from '@angular/router';

declare var $:any ;
declare function HOMEINIT([]):any;
declare function banner_home():any;
declare function countdownT():any;
declare function alertWarning([]):any;
declare function alertDanger([]):any;
declare function alertSuccess([]):any;
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit{

  CATEGORIES:any = [];
  COURSES_HOME:any = [];
  group_courses_categories:any = [];
  DESCOUNT_BANNER:any = null;
  DESCOUNT_BANNER_COURSES:any = [];

  DESCOUNT_FLASH:any = null;
  DESCOUNT_FLASH_COURSES:any = [];
  user:any = null;
  constructor(
    public homeService: HomeService,
    public cartService:CartService,
    public router: Router,
  ){
    setTimeout(() => {
      HOMEINIT($);
    }, 50);
  }

  ngOnInit(): void {
    
    this.homeService.home().subscribe((resp:any) => {
      console.log(resp);
      this.CATEGORIES = resp.categories;
      this.COURSES_HOME = resp.courses_home.data;
      this.group_courses_categories = resp.group_courses_categories;
      setTimeout(() => {
        banner_home();
        countdownT();
      }, 50);
    })
    
    this.user = this.cartService.authService.user;
  }

  // getNewTotal(COURSE:any,DESCOUNT_BANNER:any){
  //   if(DESCOUNT_BANNER.type_discount == 1){
  //     return COURSE.precio_usd - COURSE.precio_usd*(DESCOUNT_BANNER.discount*0.01);
  //   }else{
  //     return COURSE.precio_usd - DESCOUNT_BANNER.discount;
  //   }
  // }

  // getTotalPriceCourse(COURSE:any){
  //   if(COURSE.discount_g){
  //     return this.getNewTotal(COURSE,COURSE.discount_g);
  //   }
  //   return COURSE.precio_usd;
  // }

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
}
