import 'package:flutter/material.dart';
import 'package:quero_roupas/Screens/Sign/In/InScreen.dart';
import 'package:quero_roupas/Screens/SlideX/SlideScreen.dart';
import 'package:quero_roupas/Screens/SlideX/data/cache.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: Cache.insatance.testeLogo(),
      builder: (context, snap) {
        if (!snap.hasData)
          return loadLogo();
        return FutureBuilder(
          future: Cache.insatance.intPreference(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {


            if(snapshot.hasData){
              if(snapshot.data){
                print("#####################${snapshot.data}#########################3");
               return InScreen();

              } else{
                return SlideScreen();

              }

            }else{
              return loadLogo();
            }


        },);
      }
    );

  }


  Widget loadLogo(){
    return Container(
      color: Colors.white,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/load.png"))
      ),

    );
  }


}
