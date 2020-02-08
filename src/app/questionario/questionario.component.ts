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
      name: "Esports",
      imgUrl: "../../assets/img/brand/deporteT.png",
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
      name: "Animals",
      imgUrl: "../../assets/img/brand/animalsT.png",
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
      name: "Cinema",
      imgUrl: "../../assets/img/brand/movieT.png",
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
      name: "Gatronomia",
      imgUrl: "../../assets/img/brand/food.png",
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
      name: "Història",
      imgUrl: "../../assets/img/brand/historiaT.png",
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
      name: "Tecnologia",
      imgUrl: "../../assets/img/brand/informatica.png",
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
