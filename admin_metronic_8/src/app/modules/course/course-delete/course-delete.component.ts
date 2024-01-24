import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { CourseService } from '../service/course.service';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { Toaster } from 'ngx-toast-notifications';

@Component({
  selector: 'app-course-delete',
  templateUrl: './course-delete.component.html',
  styleUrls: ['./course-delete.component.scss']
})
export class CourseDeleteComponent implements OnInit {

  @Input() course:any;

  @Output() CourseD: EventEmitter<any> = new EventEmitter();
  isLoading:any;

  constructor(  public cursoService :CourseService,
    public toaster:Toaster,
    public modal: NgbActiveModal,
    ) { }

  ngOnInit(): void {
    this.isLoading = this.cursoService.isLoading$;
  }

  delete(){
    this.cursoService.deleteCourses(this.course.id).subscribe((resp:any) => {
      this.CourseD.emit("");
      this.modal.dismiss();
    })
  }


}