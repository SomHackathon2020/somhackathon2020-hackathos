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
    private httpService: CoreService
  ) { }

  ngOnInit() {
  }

  login() {
    this.httpService.doPost({submit: "login", email: this.emailInput.nativeElement.value,
      pass: this.passwordInput.nativeElement.value}).subscribe((res) => {
      console.log(res);
    });
  }

}
