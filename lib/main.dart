import 'package:almadak/screens/menu.dart';
import 'file:///D:/Apps/Flutter/almadak/lib/screens/detailView/singleView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailsView(),
    );
  }
}

