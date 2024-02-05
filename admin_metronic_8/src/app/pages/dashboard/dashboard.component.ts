import { Component, OnInit } from '@angular/core';
import { CourseService } from 'src/app/modules/course/service/course.service';
import { UserService } from 'src/app/modules/user/service/user.service';

declare var $:any;

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

  search:any = null;
  state:any = null;

  constructor(
    private courseService: CourseService,
    private userService: UserService,
    ) {}

  ngOnInit(): void {
    this.isLoading = this.courseService.isLoading$;
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
}