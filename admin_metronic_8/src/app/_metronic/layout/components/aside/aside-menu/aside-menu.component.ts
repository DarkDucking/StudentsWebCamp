import { Component, OnInit } from '@angular/core';
import { environment } from '../../../../../../environments/environment';
import { Observable } from 'rxjs';
import { AuthService } from 'src/app/modules/auth';

@Component({
  selector: 'app-aside-menu',
  templateUrl: './aside-menu.component.html',
  styleUrls: ['./aside-menu.component.scss'],
})
export class AsideMenuComponent implements OnInit {
  appAngularVersion: string = environment.appVersion;
  appPreviewChangelogUrl: string = environment.appPreviewChangelogUrl;
  user$: Observable<any>;
  user_role_id: number = 0;

  constructor(
    private auth: AuthService,
  ) {}

  ngOnInit(): void {
    this.user_role_id = this.auth.user.role_id;
    this.user$ = this.auth.currentUserSubject.asObservable();
  }
}
