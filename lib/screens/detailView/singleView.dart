import 'package:almadak/screens/detailView/item_image.dart';
import 'package:almadak/screens/detailView/title_price.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

class DetailsView extends StatefulWidget {
  String name;
  DetailsView({this.name});
  @override
  _DetailsViewState createState() => _DetailsViewState(name: name);
}

class _DetailsViewState extends State<DetailsView> {
  
  String name;
  _DetailsViewState({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Body(name: name),
    );
  }
}

class Body extends StatelessWidget {
  String name = "";
  Body({this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(
          imgSrc: "assets/images/meals_meat.jpg",
        ),
        Expanded(
          child: ItemInfo(name:name),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class ItemInfo extends StatelessWidget {

  String name = "";
  ItemInfo({this.name});


  
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
          TitlePrice(name: name,
          price: 20,),
          Container(
            alignment: Alignment.topRight,
            child:
              Padding(
                padding: const EdgeInsets.only(right: 10.0,left: 10.0),
                child: Text(
                  "مرحبا بكم في مطعم المذاق زباءينيسبكم كيمبن سحخثن كس سيحخبن ثصب كيمسن ثصحخب نيكس ثصحم يس",
                  textAlign: TextAlign.right,
                ),
              ),
          ),
          SizedBox(height: size.height *0.05),

          Container(
            // padding: EdgeInsets.all(10),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Color(0xffee1d23),
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
              color: Color(0xffee1d23),
            ),
            SizedBox(width: 10,),
            Text(
              name
            )
          ],
        );
  }
}




