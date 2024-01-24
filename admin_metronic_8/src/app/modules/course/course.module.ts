import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CourseRoutingModule } from './course-routing.module';
import { CourseComponent } from './course.component';
import { CourseAddComponent } from './course-add/course-add.component';
import { CourseEditComponent } from './course-edit/course-edit.component';
import { CourseDeleteComponent } from './course-delete/course-delete.component';
import { CourseListComponent } from './course-list/course-list.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgbModule, NgbModalModule } from '@ng-bootstrap/ng-bootstrap';
import { InlineSVGModule } from 'ng-inline-svg-2';
import { CKEditor4, CKEditorModule } from 'ckeditor4-angular';
import { SectionAddComponent } from './section/section-add/section-add.component';
import { SectionEditComponent } from './section/section-edit/section-edit.component';
import { SectionDeleteComponent } from './section/section-delete/section-delete.component';


@NgModule({
  declarations: [
    CourseComponent,
    CourseAddComponent,
    CourseEditComponent,
    CourseDeleteComponent,
    CourseListComponent,
    SectionAddComponent,
    SectionEditComponent,
    SectionDeleteComponent
  ],
  imports: [
    CommonModule,
    CourseRoutingModule,
    // admin *.module.ts
    HttpClientModule,
    FormsModule,
    NgbModule,
    ReactiveFormsModule,
    InlineSVGModule,
    NgbModalModule,

    CKEditorModule,

  ]
})
export class CourseModule { }
