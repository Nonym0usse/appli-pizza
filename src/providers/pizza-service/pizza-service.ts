import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Pizza } from '../../models/pizza'


/*
  Generated class for the PizzaServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.

  */

  @Injectable()
  export class PizzaServiceProvider {


    //private readonly url = "http://localhost:8080/pizza/";
    private readonly url = "http://kim.jcatania.io:3000/pizza/"
    //private readonly url = "pizza.json";

    constructor(private http: HttpClient)
    {
        console.log('Hello PizzaServiceProvider Provider');
    }

    sayHello(id: number){
      console.log("sayHello('" + id + "')");
    }

    get()
    {
    let rt: Array<Pizza> = new Array<Pizza>();
    return new Promise<Array<Pizza>>(
      resolve => {
        this.http.get(this.url).subscribe((data:Array<any>) => {

         for(let i=0; i < data.length; i++){
            rt.push(new Pizza(data[i]['id'], data[i]['name'], data[i]['desc'], data[i]['picture'], data[i]['price']))
          }
            resolve(rt);});
      });
    }

    getByiD(id: number)
    {
      return new Promise(resolve =>{
        this.http.get(this.url)
        .subscribe((data:Pizza)=>{
          resolve(new Pizza(data['id'], data['name'], data['desc'], data['picture'], data['price']))
        })
      })
    }

    delete(id: number)
    {
      return new Promise(resolve =>{
        this.http.delete(this.url + id).subscribe(
            resp => console.log('deleted'),
            error => console.log('Impossible de supprimer.')
        );
      })
    }

    add(pizza: Pizza){
        this.http.put(this.url+pizza.id, pizza).subscribe((data:any) => {
          console.log(pizza.name);
          console.log(pizza.desc);
      });
    }
  }
