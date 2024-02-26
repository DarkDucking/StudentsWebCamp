import { ChangeDetectorRef, Component, OnInit, ViewChild } from '@angular/core';
import { CourseService } from 'src/app/modules/course/service/course.service';
import { UserService } from 'src/app/modules/user/service/user.service';
import Chart from 'chart.js/auto';
import { CategorieService } from 'src/app/modules/categories/service/categorie.service';
import { SalesService } from 'src/app/modules/service/sales.service';
import { AuthService } from 'src/app/modules/auth';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss'],
})
export class DashboardComponent implements OnInit {
  data: any;
  COURSES:any[] = [];
  COURSESSTUDENT:any[];
  USERS:any = []; 
  SALES:any = []; 
  isLoading:any;
  barChart: any;
  user_id: number;
  user_role_id: number = 0;
  course_id: number;
  categorie_less: any[] = [];
  categorie_most: any[] = [];
  categoryNames: string[] = [];
  categoryNamesM: string[] = [];

  totalSalesCount: number = 0;
  totalClassCount: number = 0;
  percentaje: number = 0;
  search:any = null;
  state:any = null;

  constructor(
    private courseService: CourseService,
    private userService: UserService,
    private categorieService: CategorieService,
    private salesService: SalesService,
    private cdr: ChangeDetectorRef,
    private authService: AuthService,
    ) {}

  ngOnInit(): void {
    this.isLoading = this.courseService.isLoading$;
    this.isLoading = this.userService.isLoading$;
    this.user_role_id = this.authService.user.role_id;
    console.log(this.authService.user);
    this.loadSalesData();
    this.loadData();
    this.LoadClass();
    this.consulta();
    this.lastCategorie();
    this.firstCategorie();
    this.totalClases();
  }

  loadData(): void {
    this.courseService.listCourse(this.search, this.state).subscribe((resp: any) => {
      this.COURSES = resp.courses.data;
    
      // Funcion de la graficas
      this.renderCoursesPerCategoryChart();
      this.renderCoursesByLevelPieChart();
    });

    this.userService.listUsers(this.search,this.state).subscribe((resp:any) => {
      console.log(resp);
      this.USERS  = resp.users.data;

      // Funcion de la grafica
      this.renderUsersByDateChart();
    });

    this.salesService.listCourseStudent().subscribe((resp: any) => {
      this.COURSESSTUDENT = resp.coursesStudent;

    });
    
  }

  //Inscripciones
  loadSalesData(): void {
    this.salesService.listSales(this.data).subscribe(
      (response) => {
        const sales = response.sales;
        this.totalSalesCount = response.totalSalesCount;
  
        // Calcular el porcentaje (por ejemplo, 10%)
        const porcentajeBase = 138; // Puedes ajustar el valor según tus necesidades
        this.percentaje = (this.totalSalesCount * 100) / porcentajeBase;
  
        // Forzar la detección de cambios
        this.cdr.detectChanges();
      },
      (error) => {
        console.error('Error en la solicitud:', error);
      }
    );
  }

  //PieChartCursosNiveles
  renderCoursesByLevelPieChart() {
    const levels: { [key: string]: number } = {};
    const colors: string[] = ['rgba(75, 192, 192, 0.2)', 'rgba(255, 99, 132, 0.2)', 'rgba(255, 205, 86, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)'];
  
    // Filtrar los cursos con state igual a 2
    const filteredCourses = this.COURSES.filter(course => {
      const meetsCondition = course.state === 2;
      return meetsCondition;
    });
  
    filteredCourses.forEach((course) => {
      const levelKey = course.level.toString();
      levels[levelKey] = (levels[levelKey] || 0) + 1;
    });
  
    const labels = Object.keys(levels);
    const data = Object.values(levels);
    const backgroundColors = colors.slice(0, labels.length); // Ajusta según el número de niveles
  
    const canvas = document.getElementById('coursesByLevelPieChart') as HTMLCanvasElement;
  
    const pieChart = new Chart(canvas, {
      type: 'pie',
      data: {
        labels: labels,
        datasets: [
          {
            data: data,
            backgroundColor: backgroundColors,
            borderColor: 'black',
            borderWidth: 1,
          },
        ],
      },
    });
  }
  
  //BarrasCursos/Seccion
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
                label: 'Cursos por categoria',
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

  //GraficaUsuariosMes
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

        // Ordena las etiquetas cronológicamente
        const sortedLabels = Object.keys(usersByDate).sort((a, b) => {
          const [monthA, yearA] = a.split('-').map(Number);
          const [monthB, yearB] = b.split('-').map(Number);
        
          const dateA = new Date(yearA, monthA - 1).getTime(); // Convierte a milisegundos
          const dateB = new Date(yearB, monthB - 1).getTime();
        
          return dateA - dateB;
        });

        const data = sortedLabels.map((label) => usersByDate[label]);
        const backgroundColors = colors.slice(0, sortedLabels.length); // Ajusta según el número de meses

        const canvas = document.getElementById('usersByDateChart') as HTMLCanvasElement;

        const barChart = new Chart(canvas, {
          type: 'line',
          data: {
            labels: sortedLabels,
            datasets: [
              {
                label: 'Usuarios añadidos por mes',
                data: data,
                backgroundColor: backgroundColors,
                borderColor: 'purple',
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

  //VideosSubidos
  LoadClass(): void {
    this.courseService.obtenerSumaTotalClases(this.data).subscribe(
      (response) => {
        const clases = response.clases;
        this.totalClassCount = response.totalClassCount;
        // Forzar la detección de cambios
        this.cdr.detectChanges();
        console.log('Total de Clases:', this.totalClassCount);
     },
     (error) => {
       console.error('Error en la solicitud:', error);
     }
   );
  }

  //UsuariosCategoria
  consulta(){
    this.salesService.studentsPerCategorie().subscribe((resp: any) => {
      this.COURSESSTUDENT = resp;

      const categories = this.COURSESSTUDENT.map(item => item.category);
      const students = this.COURSESSTUDENT.map(item => item.total_students);

      // Obtén el contexto del canvas en tu HTML
      const canvas: any = document.getElementById('studentsPerCourseChart');
      const ctx = canvas.getContext('2d');

      // Crea el gráfico de barras
      const myChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: categories,
          datasets: [{
            label: 'Total de Estudiantes por Categoría',
            data: students,
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 1
          }]
        },
        options: {
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }
      });
    })
  }

  lastCategorie(): void {
    this.salesService.mineria().subscribe((resp: any) => {
      console.log(resp);
      if (Array.isArray(resp) && resp.length > 0) {
        if (resp.length === 1) {
          // Si solo hay un elemento, asegúrate de envolverlo en un array
          this.categorie_less = [resp[0]];
        } else {
          this.categorie_less = resp;
        }
        this.categoryNames = this.categorie_less.map(item => item.category);
        console.log(this.categoryNames.length);
        this.cdr.detectChanges();
      } else {
        console.error('Respuesta del servicio no es un array o está vacía.');
      }
    });
  }

  firstCategorie(): void {
    this.salesService.mineriaDesc().subscribe((resp: any) => {
      console.log(resp);
      if (Array.isArray(resp) && resp.length > 0) {
        if (resp.length === 1) {
          // Si solo hay un elemento, asegúrate de envolverlo en un array
          this.categorie_most = [resp[0]];
        } else {
          this.categorie_most = resp;
        }
        this.categoryNamesM = this.categorie_most.map(item => item.category);
        console.log(this.categoryNamesM.length);
        this.cdr.detectChanges();
      } else {
        console.error('Respuesta del servicio no es un array o está vacía.');
      }
    });
  }
  
  totalClases(): void {
    this.courseService.totalClasesPorCurso().subscribe((resp: any) => {
      if (Array.isArray(resp)) {
        const labels = resp.map((categoria: any) => categoria.category);
        const data = resp.map((categoria: any) => categoria.total_clases);
  
        const canvas = document.getElementById('totalClasesChart') as HTMLCanvasElement;
  
        const barChart = new Chart(canvas, {
          type: 'bar',
          data: {
            labels: labels,
            datasets: [
              {
                label: 'Total de Clases por Categoría',
                data: data,
                backgroundColor: 'rgba(255, 99, 132, 0.7)', // Color rojo
                borderColor: 'rgba(255, 99, 132, 1)',
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
        console.error('Invalid category data format:', resp);
      }
    });
  }
  
  
  
}  