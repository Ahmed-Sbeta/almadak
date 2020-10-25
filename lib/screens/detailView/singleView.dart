import 'package:almadak/screens/detailView/item_image.dart';
import 'package:almadak/screens/detailView/title_price.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

class DetailsView extends StatefulWidget {
  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(
          imgSrc: "assets/images/meals_meat.jpg",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          )
      ),
      child: Column(
        children: [
          shopName("المذاق"),
          TitlePrice(name: "شاورما لحم",
          price: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "sadsafdsfdsfdsfdsfsdfdsf",
                style: TextStyle(
                  height: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height *0.05),

          Container(
            // padding: EdgeInsets.all(10),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "! أطلب اللآن ",
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                      ),
                      SizedBox(width:20 ,),
                      Icon(Icons.call,color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row shopName(String name) {
    return Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.red,
            ),
            SizedBox(width: 10,),
            Text(
              name
            )
          ],
        );
  }
}




