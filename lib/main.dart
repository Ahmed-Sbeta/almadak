import 'package:almadak/screens/detailView/singleView.dart';
import 'package:almadak/screens/menu.dart';
import 'package:almadak/screens/detailView/item_image.dart';
import 'package:almadak/screens/detailView/title_price.dart';
import 'package:flutter/material.dart';
import 'package:almadak/screens/starterpage.dart';
import 'package:custom_splash/custom_splash.dart';

void main() {
  Function duringSplash = () {
    //Write your code here
    return ;
  };
  runApp(MaterialApp(
    home: CustomSplash(
      imagePath: 'assets/images/madaq.png',
      backGroundColor: Color(0xffee1d23),
      animationEffect: 'zoom-in',
      logoSize: 200,
      home: StarterPage(),
      customFunction: duringSplash,
      duration: 2500,
      type: CustomSplashType.StaticDuration,
    ),
  ));}


