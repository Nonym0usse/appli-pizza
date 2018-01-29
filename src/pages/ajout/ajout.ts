import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { PizzaServiceProvider } from '../../providers/pizza-service/pizza-service';
import { Pizza } from '../../models/pizza';
import { Camera } from '@ionic-native/camera';

/**
 * Generated class for the AjoutPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-ajout',
  templateUrl: 'ajout.html',
})
export class AjoutPage {
  public base64Image: string;

  constructor(public navCtrl: NavController, public navParams: NavParams, private pizza: PizzaServiceProvider, private camera: Camera) {
    this.pizza = this.navParams.data.param1;
  }
}
