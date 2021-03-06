import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;

  const ItemImage({
    Key key,
    @required this.imgSrc,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Image.asset(
      //covers 45% of total height
      imgSrc,
      height: size.height * 0.45,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}