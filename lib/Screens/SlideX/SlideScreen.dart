import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:quero_roupas/Screens/Sign/In/InScreen.dart';
import 'package:quero_roupas/Screens/SlideX/data/cache.dart';

class SlideScreen extends StatelessWidget {

  void onDonePress({@required BuildContext context,bool isDone}) {

Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InScreen()));
    if(isDone)
      Cache.insatance.AddPreference();

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroSlider(
      renderDoneBtn: Text(
        "Vamos lá",
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      renderNextBtn: Text(
        "Proximo",
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      renderSkipBtn: Text(
        "Pular",
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      slides: [
        Slide(
            backgroundImage: "assets/slide1.png",
            backgroundOpacityColor: Colors.white),
        Slide(
            backgroundImage: "assets/slide2.png",
            backgroundOpacityColor: Colors.white),
        Slide(
            backgroundImage: "assets/slide3.png",
            backgroundOpacityColor: Colors.white)
      ],
      onSkipPress: (){
        onDonePress(context: context,isDone: false);

      } ,
      onDonePress: (){

        onDonePress(context: context,isDone: true);
      },
    ));
  }
}
