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

  //authregister
  email_register:any = null;
  password_register: any = null;
  name: any = null;
  surname: any = null;
  password_confirmation: any = null;
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

  register(){
    if(!this.email_register || !this.name || !this.surname || !this.password_register || !this.password_confirmation){
      alert("Asegurate de llenar todos los campos")
      return;
    }
    if( this.password_register != this.password_confirmation){
      alert("Las contraseña no coinciden")
      return;
    }
    let data ={
      email: this.email_register ,
      name: this.name,
      surname: this.surname,
      password: this.password_register,


    }


    this.authService.register(data).subscribe((resp:any) => {
      console.log(resp);
      alert("Registro de usuario exitoso");
    }, error => {
      alert("Los datos ingresados no son correctos o ya existe una cuenta con ese correo")
      console.log(error);
    })
  }

  

}

