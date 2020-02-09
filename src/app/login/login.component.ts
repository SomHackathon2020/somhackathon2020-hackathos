import { Router } from '@angular/router';
import { CoreService } from './../core/services/core.service';
import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  focus;
  focus1;
  @ViewChild('emailFormValue') emailInput: ElementRef;
  @ViewChild('passFormValue') passwordInput: ElementRef;
  constructor(
    public router: Router,
    private httpService: CoreService
  ) { }

  ngOnInit() {
    if (localStorage.getItem('user')) {
      localStorage.removeItem('user');

    }
  }

  login() {
    this.httpService.doPost({submit: "login", email: this.emailInput.nativeElement.value,
      pass: this.passwordInput.nativeElement.value}).subscribe((res) => {
      localStorage.setItem('user', JSON.stringify(res));
      this.router.navigate(['']);
    });
  }

}
