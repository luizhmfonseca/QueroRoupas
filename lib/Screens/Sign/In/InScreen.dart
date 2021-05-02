import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:quero_roupas/Screens/Sign/Up/UpScreen.dart';

class InScreen extends StatefulWidget {
  @override
  _InScreenState createState() => _InScreenState();
}

class _InScreenState extends State<InScreen> {
  final _lockKey = GlobalKey<FormFieldState<bool>>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.fill)),
                child: Center(
                  child: Image.asset("assets/icon.png", fit: BoxFit.fill),
                )),
            flex: 1,
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                    padding: EdgeInsets.all(15.0),
                    child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.white,
                          primaryColorDark: Colors.black),
                      child: Form(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(


                              cursorColor: Colors.orange,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 15.0,bottom: 15.0,left: 15),
                                  isDense: true,

                                  hintText: "Email",
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.0),
                                  errorStyle: TextStyle(color: Colors.black),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(13.0))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FormField(

                                key: _lockKey,
                                initialValue: true,
                                builder: (FormFieldState<bool> field) {
                                  return TextFormField(
                                     cursorColor: Colors.orange,
                                    textAlignVertical: TextAlignVertical.top,
                                    obscureText: field.value
                                        ? true : false,

                                    decoration: InputDecoration(

                                        suffix:  GestureDetector(
                                            child: field.value
                                                ? Icon(Icons.lock)
                                                : Icon(Icons.lock_open),
                                            onTap: () {
                                              if (field.value)
                                                _lockKey.currentState
                                                    .setValue(false);
                                              else
                                                _lockKey.currentState
                                                    .setValue(true);
                                              setState(() {

                                              });


                                            }),
                                        contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 15),
                                        isDense: true,

                                        hintText: "Senha",
                                        labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.0),
                                        errorStyle: TextStyle(color: Colors.black),
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(13.0))),
                                  );
                              }
                            ),
                          )
                        ],
                      )),
                    )),
                Center(
                    child: Text(
                  "___________ Ou ____________",
                  style:
                      TextStyle(color: Colors.amber, fontSize: size.width / 20),
                )),
                Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Column(
                      children: [
                        SignInButton(
                          Buttons.Facebook,
                          text: "Entrar com FaceBook",
                          onPressed: () {
                            faceBookLogin();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Realize seu Cadastro",
                                style: TextStyle(fontSize: size.width / 20),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }


void faceBookLogin()async{
  final result =  await FacebookAuth.instance.login(permissions: ["email"]);
  switch (result.status){

    case LoginStatus.success:
      print("Logado :)");
      break;
    case LoginStatus.cancelled:
      print("Cancelado :/");
      break;
    case LoginStatus.failed:
      print("Erro :(");
      break;
    case LoginStatus.operationInProgress:
      print("Carregando ;)");
      break;
  }

}
}



