import { Component } from '@angular/core';



declare var $:any;
declare function HOMEINIT([]):any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'cursos_estudiantes';

  constructor(){
    setTimeout(() => {
      HOMEINIT($);
      
    }, 50);
  }
}
