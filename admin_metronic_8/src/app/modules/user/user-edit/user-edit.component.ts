import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { Toaster } from 'ngx-toast-notifications';
import { UserService } from '../service/user.service';

@Component({
  selector: 'app-user-edit',
  templateUrl: './user-edit.component.html',
  styleUrls: ['./user-edit.component.scss']
})
export class UserEditComponent implements OnInit {

 @Input() user:any;

 @Output() UserE: EventEmitter<any> = new EventEmitter();
  name:any = null; 
  surname:any = null;
 email:any = null;
 password:any = null;
 confirmation_password:any = null;
  state:any = 1
 IMAGEN_PREVISUALIZA: any= "./assets/media/avatars/300-6.jpg";
 FILE_AVATAR:any =null;

 isLoading:any;

 constructor(
  public userService :UserService,
  public toaster:Toaster,
  public modal: NgbActiveModal,
  
 )
  { 
  }



  ngOnInit(): void {
    this.isLoading = this.userService.isLoading$;
    this.name  = this.user.name;
    this.surname  = this.user.surname;
    this.email  = this.user.email;
    this.state = this.user.state;
    this.IMAGEN_PREVISUALIZA  = this.user.avatar;
   }


  processAvatar($event:any){
    if($event.target.files[0].type.indexOf("image") < 0 ){
      this.toaster.open({text: 'Solo se aceptan imagenes', caption: 'Mensaje de validación', type: 'danger'})
        return;

    }
    this.FILE_AVATAR = $event.target.files[0];
    let reader = new FileReader();
    reader.readAsDataURL(this.FILE_AVATAR);
    reader.onloadend = () => this.IMAGEN_PREVISUALIZA = reader.result;
  }

  store(){

    if(!this.name||!this.surname||!this.email 
    )
    {
      this.toaster.open({text: "Necesitas llenar todos los campos", caption: "Validación", type: "danger"})
      return;
    }
    if(this.password){
      this.toaster.open({text: "la contraseña no coincide, verificala", caption: "Validación", type: "danger"})
      return;
   
    }
   
    let formData = new FormData();
  
  formData.append("name", this.name);
  formData.append("surname", this.surname);
  formData.append("email", this.email);
  formData.append("state", this.state);
  if(this.password){
    formData.append("password", this.password);

  }
  if(this.FILE_AVATAR){  
  formData.append("imagen", this.FILE_AVATAR);
  }
 this.userService.update(formData, this.user.id).subscribe((resp:any) => {
  console.log(resp);
  this.UserE.emit(resp.user);
  this.toaster.open({text: "El usuario se actualizó correctamente", caption:"informe", type: "primary"});
  this.modal.close();
 })



  }
}
