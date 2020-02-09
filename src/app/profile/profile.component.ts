import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
    selector: 'app-profile',
    templateUrl: './profile.component.html',
    styleUrls: ['./profile.component.scss']
})

export class ProfileComponent implements OnInit {

  user: any;

  constructor(public router: Router) { }

  ngOnInit() {
    if (!localStorage.getItem('user')) {
      localStorage.removeItem('user');
      this.router.navigate(['/login']);
    } else {
      this.user = localStorage.getItem('user');
    }
  }

}
