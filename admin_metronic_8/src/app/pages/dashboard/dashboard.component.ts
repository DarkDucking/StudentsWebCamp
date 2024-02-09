import { Component, OnInit, ViewChild } from '@angular/core';
import { CourseService } from 'src/app/modules/course/service/course.service';
import { UserService } from 'src/app/modules/user/service/user.service';
import Chart from 'chart.js/auto';
import { CategorieService } from 'src/app/modules/categories/service/categorie.service';

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
    private categorieService: CategorieService,
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
    
      // Funcion de la grafica
      this.renderCoursesPerCategoryChart();
    });

    this.userService.listUsers(this.search,this.state).subscribe((resp:any) => {
      console.log(resp);
      this.USERS  = resp.users.data;

      // Funcion de la grafica
      this.renderUsersByDateChart();
    });
    
  }

  renderCoursesPerCategoryChart() {
    const categories: { [key: string]: number } = {};
    const categoryNames: { [key: string]: string } = {};
    const colors: string[] = ['rgba(75, 192, 192, 0.2)', 'rgba(255, 99, 132, 0.2)', 'rgba(255, 205, 86, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(153, 102, 255, 0.2)'];
  
    this.COURSES.forEach((COURSE) => {
      const categoryId = COURSE.categorie_id.toString();
      categories[categoryId] = (categories[categoryId] || 0) + 1;
    });
  
    // Fetch category names from CategorieService
    this.categorieService.listCategories(null, null).subscribe((response: any) => {
      const categoryData = response.categories?.data;
  
      if (Array.isArray(categoryData)) {
        categoryData.forEach((category: any, index: number) => {
          categoryNames[category.id.toString()] = category.name;
        });
  
        const labels = Object.keys(categories).map((categoryId) => categoryNames[categoryId]);
        const data = Object.values(categories);
        const backgroundColors = colors.slice(0, categoryData.length); // Ensure enough colors for categories
  
        const canvas = document.getElementById('coursesPerCategoryChart') as HTMLCanvasElement;
  
        const barChart = new Chart(canvas, {
          type: 'bar',
          data: {
            labels: labels,
            datasets: [
              {
                label: 'Courses per Category',
                data: data,
                backgroundColor: backgroundColors,
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
      } else {
        console.error('Invalid category data format:', categoryData);
      }
    });
  }   

  renderUsersByDateChart() {
    const usersByDate: { [key: string]: number } = {};
    const colors: string[] = ['rgba(75, 192, 192, 0.2)', 'rgba(255, 99, 132, 0.2)', 'rgba(255, 205, 86, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(153, 102, 255, 0.2)'];

    this.userService.listUsers(null, null).subscribe(
      (response: any) => {
        console.log('Response from userService.listUsers:', response);

        const userData = response.users.data; // Ajusta esto según la estructura de tu respuesta

        if (!userData || !Array.isArray(userData)) {
          console.error('Invalid user data format:', userData);
          return;
        }

        userData.forEach((user: any) => {
          const userDate = new Date(user.created_at);
          const monthYearKey = `${userDate.getMonth() + 1}-${userDate.getFullYear()}`;
          usersByDate[monthYearKey] = (usersByDate[monthYearKey] || 0) + 1;
        });

        const labels = Object.keys(usersByDate);
        const data = Object.values(usersByDate);
        const backgroundColors = colors.slice(0, labels.length); // Ajusta según el número de meses

        const canvas = document.getElementById('usersByDateChart') as HTMLCanvasElement;

        const barChart = new Chart(canvas, {
          type: 'bar',
          data: {
            labels: labels,
            datasets: [
              {
                label: 'Users Added by Month',
                data: data,
                backgroundColor: backgroundColors,
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
      },
      (error) => {
        console.error('Error fetching user data:', error);
      }
    );
}

}  