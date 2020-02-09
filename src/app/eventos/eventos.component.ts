import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-eventos',
  templateUrl: './eventos.component.html',
  styleUrls: ['./eventos.component.css']
})
export class EventosComponent implements OnInit {

  evento: any[];
  secciones: any[];

  constructor(public router: Router) { }

  ngOnInit() {
    if (!localStorage.getItem('user')) {
      localStorage.removeItem('user');
      this.router.navigate(['/login']);
    }
    this.evento = [{
      date: "20 Febrer 2020 - 16:00",
      title: "Activitat misteriosa",
      description: "Activitat divertida que no oblidaràs ",
      price: "Preu: 15€ ",
      dirrection: "C/ Plaça de les Teresses Nº9 ",
      secciones: [{
        hora: "16:00",
        pista: "Qui és el millor amic del home?",
        ocult: false
      }, {
        hora: "18:00",
        pista: "Cerca un llibre que allà ho trobaràs.",
        ocult: true
      }, {
        hora: "20:00",
        pista: "Cerca el millor menjar saludable del nostre mar.",
        ocult: true
      }]
    }];
  }

  showEvent(event) {
    this.secciones = event;
  }

}
