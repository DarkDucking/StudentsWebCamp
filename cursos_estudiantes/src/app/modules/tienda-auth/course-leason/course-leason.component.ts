import { Component } from '@angular/core';
import { TiendaAuthService } from '../service/tienda-auth.service';
import { ActivatedRoute, Router } from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';
import { CommonModule } from '@angular/common';
import {  SafeResourceUrl } from '@angular/platform-browser';

declare function alertDanger([]):any;
declare function alertSuccess([]):any;
@Component({
  selector: 'app-course-leason',
  templateUrl: './course-leason.component.html',
  styleUrls: ['./course-leason.component.css']
})

export class CourseLeasonComponent {

  slug:any = null;
  courses_selected:any = null;
  clase_selected:any = null;
  video_link:any;
  constructor(
    public tiendaAuthService: TiendaAuthService,
    public activedRoute: ActivatedRoute,
    public router: Router,
    public sanitizer: DomSanitizer,
  
  ) {
    
  }
  ngOnInit(): void {
    
    this.activedRoute.params.subscribe((resp:any) => {
      console.log(resp);
      this.slug = resp.slug;
    })

    this.tiendaAuthService.showCourse(this.slug).subscribe((resp:any) => {
      console.log(resp);
      if(resp.message == 403){
        alertDanger(resp.message_text);
        this.router.navigateByUrl("/");
      }
      this.courses_selected = resp.course;

      this.clase_selected = this.courses_selected.malla[0].clases[0];

      console.log("clase");
      console.log(this.clase_selected);

      this.generateYouTubeEmbedUrl(this.clase_selected.video_link);
      this.video_link = this.clase_selected.video_link;
    
    
    })

    
  }

  // urlVideo(clase_selected:any){
  //   return this.Sanitizer.bypassSecurityTrustResourceUrl(clase_selected.video_link);
  // }
  urlVideo(clase_selected: any): SafeResourceUrl {
      return this.sanitizer.bypassSecurityTrustResourceUrl(clase_selected.video_link);
    
  }

  openClase(clase:any){
    this.clase_selected = clase;
    this.generateYouTubeEmbedUrl(this.clase_selected.video_link);
      this.video_link = this.clase_selected.video_link;
    
  }

  generateYouTubeEmbedUrl(videoLink: string): SafeResourceUrl {
    // Formato de enlace embebido de YouTube
    const embedUrl = `https://www.youtube.com/embed/${this.getYouTubeVideoId(videoLink)}`;

    // Sanitiza la URL antes de devolverla
    return this.sanitizer.bypassSecurityTrustResourceUrl(embedUrl);
  }

  // Función para obtener el ID del video de YouTube

  private getYouTubeVideoId(videoLink: string): string | null {
    // Patrones de enlace de YouTube
    const youtubePatterns = [
      /(?:https?:\/\/)?(?:www\.)?(?:youtube\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})/,
      /^([a-zA-Z0-9_-]{11})$/
    ];

    // Comprueba cada patrón
    for (const pattern of youtubePatterns) {
      const match = videoLink.match(pattern);
      if (match) {
        return match[1];  // Devuelve el ID del video si hay coincidencia
      }
    }
    return null;
    
     
      // Devuelve null si no se encuentra un ID válido
  }
}
