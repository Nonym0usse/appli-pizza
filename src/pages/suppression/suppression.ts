import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { PizzaServiceProvider } from '../../providers/pizza-service/pizza-service';

/**
 * Generated class for the SuppressionPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-suppression',
  templateUrl: 'suppression.html',
})
export class SuppressionPage {
  mypizza: any;
  mypizzadelete: any;

  constructor(public navCtrl: NavController, public navParams: NavParams, private pizza: PizzaServiceProvider) {
    this.pizza.get().then((data: Array<any>) => {
      this.mypizza = data;
    });
  }


  suppression(myid: number)
  {
    console.log(myid);
    this.pizza.delete(myid).then((data: Array<any>) => {
      this.mypizza = data;
      console.log(this.mypizza);
    });
  }
}
