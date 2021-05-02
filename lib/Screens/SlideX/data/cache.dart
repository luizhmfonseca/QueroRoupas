import 'package:shared_preferences/shared_preferences.dart';

class Cache{
  static Cache insatance =  Cache._Constructor();
  Cache._Constructor();

  bool isShow;

  SharedPreferences isShowSlide;


 Future<bool> intPreference() async{
   isShowSlide = await SharedPreferences.getInstance();

     return isShowSlide.getBool("slide")?? false;
}

  Future<bool> AddPreference() async{

    isShowSlide.setBool("slide", true);

  }

  //função sera apagada
// feita so para testa inicialização da logo


Future<bool>testeLogo(){
    Future<bool> teste =  Future.delayed(Duration(seconds: 4)).then((value){
      return true;
    });
    return teste;

}





}