import { Component, OnInit } from '@angular/core';
import { CourseService } from '../service/course.service';
import { Toaster } from 'ngx-toast-notifications';

@Component({
  selector: 'app-course-add',
  templateUrl: './course-add.component.html',
  styleUrls: ['./course-add.component.scss']
})
export class CourseAddComponent implements OnInit {

  subcategories:any = [];
  subcategories_back:any = [];
  categories:any = [];
  instructores:any = [];

  isLoading:any; 
  
  FILE_PORTADA:any =null;
  IMAGEN_PREVISUALIZA:any = null;

  text_requirements:any =null;
  requirements:any =[];
  text_what_is_for:any =null;
  what_is_fors:any = [];

  title:string= '';
  subtitle:string= '';
  description:any = "<p> Hola mundo </p>";
  categorie_id:any =null;
  sub_categorie_id:any =null;
  user_id:any =null;
  level:any =null;
  idioma:any =null;
//who_is_it_for


  constructor(
    public courseService: CourseService,
    public toaster:Toaster,

  ) { }

  ngOnInit(): void {
    this.isLoading = this.courseService.isLoading$;
    this.courseService.lisConfig().subscribe((resp:any) => {
      console.log(resp);

      this.categories = resp.categories
      this.subcategories = resp.subcategories
      this.instructores = resp.instructores
    })
  }

  selectCategorie(event:any){
    let VALUE = event.target.value;
    console.log(VALUE);
    this.subcategories_back = this.subcategories.filter((item:any) => item.categorie_id == VALUE);
    this.courseService.isLoadingSubject.next(true);
    setTimeout(() =>
    {
      this.courseService.isLoadingSubject.next(false);
    },10);

  }
  
    addRequirements(){
      if(!this.text_requirements){
        this.toaster.open({text: "Necesitas agregar un requerimiento",caption: 'Validación', type:'danger'});
        return;
      }
        this.requirements.push(this.text_requirements);
        this.text_requirements=null;

    }

    addWhatIsFor(){
      if(!this.text_what_is_for){
        this.toaster.open({text: "Necesitas ingresar el público a quien se dirige",caption: 'VALIDACION', type:'danger'});
       
        return;
      }
        this.what_is_fors.push(this.text_what_is_for);
        this.text_what_is_for=null;
    }

    removeRequirement(index:number){
      this.requirements.splice(index,1);
       }
       removeWhatIsFor(index:number){
         this.what_is_fors.splice(index,1);
     
     
       }
     
    public onChange(event: any){
      this.description = event.editor.getData();
      //console.log(this.description)

      
    }
  save(){
    console.log(this.description);
    if(!this.title ||
      !this.subtitle ||
      !this.categorie_id ||
      !this.sub_categorie_id
      ){
        this.toaster.open({text: "Necesitas llenar todos los campos del formulario", caption: 'validacion', type: 'danger'});
        return;
      }
    let formData = new FormData();
    formData.append("title",this.title);
    formData.append("subtitle",this.subtitle);
    formData.append("categorie_id",this.categorie_id);
    formData.append("sub_categorie_id",this.sub_categorie_id);
    formData.append("description",this.description);
    formData.append("level",this.level);
    formData.append("idioma",this.idioma);
    formData.append("user_id",this.user_id);
    formData.append("portada",this.FILE_PORTADA);
    
    formData.append("requirements",this.requirements);
    formData.append("who_is_it_for",this.what_is_fors);

    this.courseService.registerCourses(formData).subscribe((resp:any) => {
      console.log(resp);
      if(resp.message==403){
        this.toaster.open({text: resp.message_text, caption: 'ERROR', type: 'danger'});
        return;
        
      }else{
        this.toaster.open({text: "El curso se ha creado con éxito", caption: 'REGISTRO ÉXITOSO', type: 'primary'});
        this.title= '';
        this.subtitle= '';
        this.description= null;
        this.categorie_id=null;
        this.sub_categorie_id=null;
        this.user_id=null;
        this.level=null;
        this.idioma=null;
        this.FILE_PORTADA =null;
        this.what_is_fors = [];
        this.requirements= [];
        this.IMAGEN_PREVISUALIZA =null;  
        return;
     
      }
    });
  }

  processFile($event:any){
    if($event.target.files[0].type.indexOf("image") < 0 ){
      this.toaster.open({text: 'Solo se aceptan imagenes', caption: 'VALIDACION', type: 'danger'})
        return;

    }
    this.FILE_PORTADA = $event.target.files[0];
    let reader = new FileReader();
    reader.readAsDataURL(this.FILE_PORTADA);
    reader.onloadend = () => this.IMAGEN_PREVISUALIZA = reader.result;
    this.courseService.isLoadingSubject.next(true);
    setTimeout(() =>
    {
      this.courseService.isLoadingSubject.next(false);
    }, 50);

  }
}
