import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-questionario',
  templateUrl: './questionario.component.html',
  styleUrls: ['./questionario.component.css']
})
export class QuestionarioComponent implements OnInit {

  public categories:  any[];

  constructor() { }

  ngOnInit() {
    this.categories = [{
      "name": "Deportes",
      "subcategories": [
        {name: "Futbol", value: "football"},
        {name: "Natació", value: "swimming"},
        {name: "Esports Electrònics", value: "esports"},
        {name: "Basquet", value: "basketball"},
        {name: "Handbol", value: "handball"},
        {name: "Altres", value: "others"}
      ]
    },
    {
      "name": "Deportes",
      "subcategories": [
        {name: "Futbol", value: "football"},
        {name: "Natació", value: "swimming"},
        {name: "Esports Electrònics", value: "esports"},
        {name: "Basquet", value: "basketball"},
        {name: "Handbol", value: "handball"},
        {name: "Altres", value: "others"}
      ]
    },
    {
      "name": "Deportes",
      "subcategories": [
        {name: "Futbol", value: "football"},
        {name: "Natació", value: "swimming"},
        {name: "Esports Electrònics", value: "esports"},
        {name: "Basquet", value: "basketball"},
        {name: "Handbol", value: "handball"},
        {name: "Altres", value: "others"}
      ]
    },
    {
      "name": "Deportes",
      "subcategories": [
        {name: "Futbol", value: "football"},
        {name: "Natació", value: "swimming"},
        {name: "Esports Electrònics", value: "esports"},
        {name: "Basquet", value: "basketball"},
        {name: "Handbol", value: "handball"},
        {name: "Altres", value: "others"}
      ]
    },
    {
      "name": "Deportes",
      "subcategories": [
        {name: "Futbol", value: "football"},
        {name: "Natació", value: "swimming"},
        {name: "Esports Electrònics", value: "esports"},
        {name: "Basquet", value: "basketball"},
        {name: "Handbol", value: "handball"},
        {name: "Altres", value: "others"}
      ]
    }];
  }

}
