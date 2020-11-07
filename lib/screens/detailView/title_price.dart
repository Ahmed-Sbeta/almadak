import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitlePrice extends StatelessWidget {
  final int price;
  final String name;
  const TitlePrice({
    Key key, this.price, this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment:Alignment.centerRight,
                  child: Text(
                    " د.ل ",
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment:Alignment.centerLeft,
                  child: Text(
                    "$price",
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
