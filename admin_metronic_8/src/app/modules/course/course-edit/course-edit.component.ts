import { Component, OnInit } from '@angular/core';
import { CourseService } from '../service/course.service';
import { Toaster } from 'ngx-toast-notifications';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-course-edit',
  templateUrl: './course-edit.component.html',
  styleUrls: ['./course-edit.component.scss']
})
export class CourseEditComponent implements OnInit {

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
  state:any = 1;
  courses_id:any;
  course_selected:any = null;

  constructor(
    public courseService: CourseService,
    public toaster:Toaster,
    public activedRoute:ActivatedRoute,
  ) { }

  ngOnInit(): void {
    this.isLoading = this.courseService.isLoading$;
    this.courseService.lisConfig().subscribe((resp:any) => {
      console.log(resp);

      this.categories = resp.categories
      this.subcategories = resp.subcategories
      this.instructores = resp.instructores
      this.showCourse(this.courses_id);
    })

    this.activedRoute.params.subscribe((resp:any) => {
      this.courses_id = resp.id
    })
  }

  showCourse(course_id:string){
    this.courseService.showCourse(course_id).subscribe((resp:any) => {
      console.log(resp);
      this.course_selected = resp.course;

      this.title= this.course_selected.title;
      this.subtitle= this.course_selected.subtitle;
      this.description= this.course_selected.description;
      this.categorie_id=this.course_selected.categorie_id;
      this.selectCategorie({target:{value: this.categorie_id}});
      this.sub_categorie_id=this.course_selected.sub_categorie_id;
      this.user_id=this.course_selected.user_id;
      this.level=this.course_selected.level;
      this.idioma=this.course_selected.idioma;
      //this.FILE_PORTADA = null;
      this.what_is_fors = this.course_selected.who_is_it_for;
      this.requirements= this.course_selected.requirements;
      this.IMAGEN_PREVISUALIZA = this.course_selected.imagen; 
      this.state = this.course_selected.state;
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
    formData.append("state",this.state);
    if(this.FILE_PORTADA){
      formData.append("portada",this.FILE_PORTADA);
    }
    
    formData.append("requirements",this.requirements);
    formData.append("who_is_it_for",this.what_is_fors);

    this.courseService.updateCourses(formData, this.courses_id).subscribe((resp:any) => {
      console.log(resp);
      if(resp.message==403){
        this.toaster.open({text: resp.message_text, caption: 'ERROR', type: 'danger'});
        return;
        
      }else{
        this.toaster.open({text: "El curso se ha modificado con éxito", caption: 'REGISTRO ÉXITOSO', type: 'primary'});
        // this.title= '';
        // this.subtitle= '';
        // this.description= null;
        // this.categorie_id=null;
        // this.sub_categorie_id=null;
        // this.user_id=null;
        // this.level=null;
        // this.idioma=null;
        // this.FILE_PORTADA =null;
        // this.what_is_fors = [];
        // this.requirements= [];
        // this.IMAGEN_PREVISUALIZA =null;  
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
