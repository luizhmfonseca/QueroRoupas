import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quero_roupas/Screens/Feed/FeedScreen.dart';
import 'package:quero_roupas/Screens/Home/HomeScreen.dart';
import 'package:quero_roupas/Screens/Sign/In/AdresScress/adressScreen.dart';
import 'package:quero_roupas/Screens/Sign/Up/UpScreen.dart';

import 'Screens/SlideX/SlideScreen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
theme: ThemeData(fontFamily: "Roboto"),
title: "Quero Roupas",
  home:  AdressScreen()
));
}
