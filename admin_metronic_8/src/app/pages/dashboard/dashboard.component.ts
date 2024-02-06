import { Component, OnInit, ViewChild } from '@angular/core';
import { CourseService } from 'src/app/modules/course/service/course.service';
import { UserService } from 'src/app/modules/user/service/user.service';
import { Chart } from 'chart.js';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss'],
})
export class DashboardComponent implements OnInit {
  data: any;
  COURSES:any = [];
  USERS:any = [];
  isLoading:any;
  barChart: any;

  search:any = null;
  state:any = null;

  constructor(
    private courseService: CourseService,
    private userService: UserService,
    ) {}

  ngOnInit(): void {
    this.isLoading = this.courseService.isLoading$;
    this.isLoading = this.userService.isLoading$;
    this.loadData();
  }

  loadData(): void {
    this.courseService.listCourse(this.search,this.state).subscribe((resp:any) => {
      console.log(resp);
      this.COURSES  = resp.courses.data;
    })
    this.userService.listUsers(this.search,this.state).subscribe((resp:any) => {
      console.log(resp);
      this.USERS  = resp.users.data;
    })
  }

  loadBarChart(): void {
    // Puedes personalizar este método según tus datos y necesidades
    const barChart = new Chart('barChart', {
      type: 'bar',
      data: {
        labels: ['Curso 1', 'Curso 2', 'Curso 3'],
        datasets: [
          {
            label: 'Número de Estudiantes',
            data: [10, 15, 8],
            backgroundColor: ['rgba(75, 192, 192, 0.2)', 'rgba(255, 99, 132, 0.2)', 'rgba(255, 255, 0, 0.2)'],
            borderColor: ['rgba(75, 192, 192, 1)', 'rgba(255, 99, 132, 1)', 'rgba(255, 255, 0, 1)'],
            borderWidth: 1,
          },
        ],
      },
      options: {
        scales: {
          y: {
            beginAtZero: true,
          },
        },
      },
    });
  }
}