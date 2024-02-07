import { Component, OnInit, ViewChild } from '@angular/core';
import { CourseService } from 'src/app/modules/course/service/course.service';
import { UserService } from 'src/app/modules/user/service/user.service';
import Chart from 'chart.js/auto';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss'],
})
export class DashboardComponent implements OnInit {
  data: any;
  COURSES:any[] = [];
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
    this.courseService.listCourse(this.search, this.state).subscribe((resp: any) => {
      this.COURSES = resp.courses.data;
      console.log(this.COURSES);
    
      // Call the function to render the chart here
      this.renderCoursesPerCategoryChart();
    });
    this.userService.listUsers(this.search,this.state).subscribe((resp:any) => {
      console.log(resp);
      this.USERS  = resp.users.data;
    })
  }

  renderCoursesPerCategoryChart() {
    console.log(this.COURSES);
    const categories: { [key: number]: number } = {};
    this.COURSES.forEach((COURSE) => {
      const categoryName = COURSE.categorie_id; // Assuming 'categorie_id' represents the category
      categories[categoryName] = (categories[categoryName] || 0) + 1;
    });

    const labels = Object.keys(categories);
    const data = Object.values(categories);

    const canvas = document.getElementById('coursesPerCategoryChart') as HTMLCanvasElement;

    const barChart = new Chart(canvas, {
      type: 'bar',
      data: {
        labels: labels,
        datasets: [
          {
            label: 'Courses per Category',
            data: data,
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            borderColor: 'rgba(75, 192, 192, 1)',
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