import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { DashboardComponent } from './dashboard.component';
import { WidgetsModule } from '../../_metronic/partials';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [DashboardComponent],
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,

    RouterModule.forChild([
      {
        path: '',
        component: DashboardComponent,
      },
    ]),
    WidgetsModule,
  ],
})
export class DashboardModule {}
