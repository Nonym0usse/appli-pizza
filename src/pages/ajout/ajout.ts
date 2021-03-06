/**
* @Author: VELLA CYRIL <nonym0usse>
* @Date:   2018-02-14T11:53:40+01:00
* @Email:  contact@vella.fr
 * @Last modified by:   nonym0usse
 * @Last modified time: 2018-02-26T16:40:25+01:00
*/



import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Camera, CameraOptions } from '@ionic-native/camera';
import { PizzaServiceProvider } from '../../providers/pizza-service/pizza-service';
import { Pizza } from '../../model/pizza';
import { HomePage } from '../home/home';
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
  pizza : Pizza = new Pizza();

  constructor(public navCtrl: NavController, public navParams: NavParams, private pizzaprovid: PizzaServiceProvider,  private camera: Camera) {
  }


  pizzaadd = [];

  add(){
    if(this.pizzaadd['prix'] == null)
    {
      this.pizza.price =+ 0;
    }else{
      this.pizza.price =+ this.pizzaadd['prix'];
    }
    this.pizza.name = this.pizzaadd['nom'];
    this.pizza.desc = this.pizzaadd['desc'];

    console.log(this.pizza);
    this.pizzaprovid.addpizza(this.pizza).then((item) =>{
      this.navCtrl.push(HomePage);
    });
  }

  camadd(){

    const options: CameraOptions = {
      quality: 100,
      destinationType: this.camera.DestinationType.DATA_URL,
      encodingType: this.camera.EncodingType.JPEG,
      mediaType: this.camera.MediaType.PICTURE,
      saveToPhotoAlbum: true,
    }


    this.camera.getPicture(options).then((imagedata) =>{
      this.base64Image = imagedata;
      this.pizza.picture = 'data:image/png;base64,'+this.base64Image;
      console.log(this.pizza);
    });
  }

}
