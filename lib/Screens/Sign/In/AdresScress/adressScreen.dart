import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdressScreen extends StatefulWidget {
  @override
  _AdressScreenState createState() => _AdressScreenState();
}

class _AdressScreenState extends State<AdressScreen> {

  final phoneController = TextEditingController();
  final codeController = TextEditingController();
  String  verifivcationId;
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          TextField(
            controller: phoneController,


          ),
          ElevatedButton(onPressed: (){
            _auth.verifyPhoneNumber(
                phoneNumber: phoneController.text,
                verificationCompleted: (credencial)async{
                  print("Sucessssssssssssssssssoooooooooooooooooooo");

                },
                verificationFailed: (failed)async{

                },
                codeSent: (id,token) async{
                  verifivcationId = id;
                  print("Okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");

            },
                codeAutoRetrievalTimeout: (id)async{

                });


          }, child: Text("check")),
          TextField(
            controller: codeController,


          ),

          ElevatedButton(onPressed: (){
            PhoneAuthProvider.credential(verificationId: verifivcationId, smsCode: codeController.text);


          }, child: Text("codigo")),

        ],

      ),
    );
  }
}
