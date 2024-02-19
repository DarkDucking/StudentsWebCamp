  import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { URL_SERVICIOS } from 'src/app/config/config';

@Injectable({
  providedIn: 'root'
})
export class TiendaGuestService {

  constructor(
    public http: HttpClient,
  ) { }

  landingCourse(slug:string){
    let LINK = "";
    // if(campaing_discount){
    //   LINK = LINK + "?campaing_discount="+campaing_discount;
    // }
    let URL = URL_SERVICIOS+"/ecommerce/course-detail/"+slug+LINK;
    return this.http.get(URL);
  }

  listCourses(data:any){
    let URL = URL_SERVICIOS+"/ecommerce/list_courses";
    return this.http.post(URL,data);
  }

  listConfig(){
    let URL = URL_SERVICIOS+"/ecommerce/config_all";
    return this.http.get(URL);
  }
}
