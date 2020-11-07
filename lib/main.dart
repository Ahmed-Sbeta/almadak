import 'package:almadak/screens/branches.dart';
import 'package:almadak/screens/detailView/singleView.dart';
import 'package:almadak/screens/menu1.dart';
import 'package:almadak/screens/detailView/item_image.dart';
import 'package:almadak/screens/detailView/title_price.dart';
import 'package:flutter/material.dart';
import 'package:almadak/screens/starterpage.dart';
import 'package:custom_splash/custom_splash.dart';

// ignore: non_constant_identifier_names
void main() {
  Function duringSplash = () {
    //Write your code here
    return ;
  };
  runApp(MyApp(duringSplash: duringSplash));}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
    @required this.duringSplash,
  }) : super(key: key);

  final Function duringSplash;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      CustomSplash(
        imagePath: 'assets/images/madaq.png',
        backGroundColor: Color(0xffee1d23),
        logoSize: 200,
        home: StarterPage(),
        customFunction: duringSplash,
        duration: 2500,
        type: CustomSplashType.StaticDuration,
      ),
    );
  }
}


