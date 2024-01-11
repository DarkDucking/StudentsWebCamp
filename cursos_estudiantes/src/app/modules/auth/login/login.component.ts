import { Component, NgModule, OnInit} from '@angular/core';
import { AuthService } from '../service/auth.service';
import { FormsModule, NgModel } from '@angular/forms';
import { Router } from '@angular/router';

declare function _clickDoc():any;
  


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {


  email:any = null;
  password:any =null;
  constructor(
    public authService: AuthService,
    public router: Router,
  ){}
    ngOnInit(): void {
      setTimeout(() => {
        _clickDoc();
      },50);
    
    if(this.authService.user){
      this.router.navigateByUrl("/");
      return;

    }
  }

  login() {
    if(!this.email || !this.password){
      alert("Debes llenar todos los campos");
      return;
    }
    this.authService.login(this.email,this.password).subscribe((resp:any) => {
      console.log(resp);
      if(resp){
          window.location.reload();
      }else{
        alert("Las credenciales no coinciden con ninguna cuenta");
      }
    })
  }

  

}

