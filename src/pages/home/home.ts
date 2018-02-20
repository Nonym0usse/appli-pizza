/**
* @Author: VELLA CYRIL <nonym0usse>
* @Date:   2018-02-14T11:53:40+01:00
* @Email:  contact@vella.fr
* @Last modified by:   nonym0usse
* @Last modified time: 2018-02-14T17:58:10+01:00
*/



import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { PizzaServiceProvider } from '../../providers/pizza-service/pizza-service';
import { ModificationPage } from '../modification/modification';
import { DetailPage } from '../detail/detail';

import { PanierPage } from '../panier/panier';
import { AjoutPage } from '../ajout/ajout';
import { Pizza } from '../../model/pizza';
import { ToastController } from 'ionic-angular';
import { Vibration } from '@ionic-native/vibration';
import { ModalController, NavParams } from 'ionic-angular';


@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})

export class HomePage {
  paniertab = new Array<Pizza>();
  mypizza : any;
  constructor(public navCtrl: NavController, private pizza: PizzaServiceProvider, private toastCtrl: ToastController, private vibration: Vibration, public modalCtrl: ModalController) {
    this.gethome();
    this.pizza.getById(2).then((item: any) => {
    });
  }

  gethome(){
    this.pizza.get().then((items: Array<any>) => {
      this.mypizza = items;
    });
  }

  modifpage(mapizza){
    this.navCtrl.push(ModificationPage, {
      param1: mapizza
    });
  }
  delete(mapizza){
    this.pizza.deletebyid(mapizza.id).then((item) =>{
      this.gethome();
    });
    this.varDump("La pizza " + mapizza.name + " à été supprimée.");
  }

  varDump(message) {
    let toast = this.toastCtrl.create({
      message: message,
      duration: 3000,
      position: 'top'
    });

    toast.present();
    this.vibration.vibrate(1000);
  }

  panier(mapizza){
    this.paniertab.push(mapizza);
    this.varDump("Et une " + mapizza.name + " ajoutée !");
  }

  add(){
    this.navCtrl.push(AjoutPage);
    this.varDump("Votre pizza " + mapizza.name + " été ajoutée à notre carte.")
  }
  seepanier(){
    this.navCtrl.push(PanierPage, {
      param1: this.paniertab
    });
  }
}
