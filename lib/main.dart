import 'package:almadak/screens/detailView/singleView.dart';
import 'package:almadak/screens/menu.dart';
import 'package:almadak/screens/detailView/item_image.dart';
import 'package:almadak/screens/detailView/title_price.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

