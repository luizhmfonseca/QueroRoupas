import 'package:flutter/material.dart';
import 'package:quero_roupas/Screens/Feed/FeedScreen.dart';

class UpScreen extends StatefulWidget {
  @override
  _UpScreenState createState() => _UpScreenState();
}

class _UpScreenState extends State<UpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Theme(
        data: ThemeData(
        primaryColor: Colors.orange,
        primaryColorDark: Colors.black),
    child:
    ListView(

        children: [
          Container(

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(top: 140.0,left: 20.0,right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(bottom: 13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6,left: 10),
                            child: Text("Nome Completo"),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 12.0,bottom: 12.0,left: 15.0),
                                errorStyle: TextStyle(color: Colors.black),
                                fillColor: Colors.orange,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0))),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6,left: 10),
                            child: Text("Celular"),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(

                                contentPadding: EdgeInsets.only(top: 12.0,bottom: 12.0,left: 15.0),
                                errorStyle: TextStyle(color: Colors.black),
                                fillColor: Colors.orange,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0))),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6,left: 10),
                            child: Text("Data de Nascimento"),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(

                                contentPadding: EdgeInsets.only(top: 12.0,bottom: 12.0,left: 15.0),
                                errorStyle: TextStyle(color: Colors.black),
                                fillColor: Colors.orange,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0))),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6,left: 10),
                            child: Text("E-mail"),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(

                                contentPadding: EdgeInsets.only(top: 12.0,bottom: 12.0,left: 15.0),
                                errorStyle: TextStyle(color: Colors.black),
                                fillColor: Colors.orange,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0))),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(

                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),

                              )
                          )
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedScreen()));
                      },
                      child: SizedBox(
                        width: size.width/3,
                        child: Center(
                          child: Text(
                            "Continuar",
                            style: TextStyle(fontSize: size.width / 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      )
    ),);
  }
}
