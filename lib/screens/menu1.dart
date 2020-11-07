import 'dart:convert';
import 'package:almadak/screens/detailView/singleView.dart';
import 'package:flutter/material.dart';

//banner items
var bannerItems = ["مشــويات" , " وجبــات" , "بوكــس السـعادة", "سندوتـشـات","شــاورما المذاق","سلاطات المذاق "];
var bannerImages = [
  "assets/images/mashwe.jpg",
  "assets/images/meals_meat.jpg",
  "assets/images/happybox.jpg",
  "assets/images/sandwich.jpg",
  "assets/images/shawerma.jpg",
  "assets/images/salad.jpg",
];

String path = "meals.json";

class Menu1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    var screenHieght = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller = PageController(viewportFraction:0.85 ,initialPage: 1);

    List<Widget> banners = new List<Widget>();

    //banner list generate
    for(int x=0 ; x<bannerItems.length;x++){
      var bannerView = Padding(padding: EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: (){
            setState(() {
              if(x==0){path="Burger.json";}
              if(x==1){path="meals.json";}
              if(x==2){path="mashaweat.json";}
              if(x==3){path="Pizza.json";}
              if(x==4){path="Burger.json";}
              if(x==5){path="meals.json";}

            });
          },
          child: Container(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow:[ BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0,2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                      ]
                  ),
                ),

                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    bannerImages[x],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent,Colors.black]
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(bannerItems[x],style: TextStyle(fontSize: 25.0, color: Colors.white),
                      ),
                      Text(
                        "طعــم ولا أروع",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
      banners.add(bannerView);
    }
    //end

    //getting data list from json
    Future<List<Widget>> createList(path) async {
      List<Widget> items = new List<Widget>();
      String dataString = await DefaultAssetBundle.of(context).loadString("assets/jsonData/$path");
      List<dynamic> dataJSON = jsonDecode(dataString);

      dataJSON.forEach((object) {

        //saving placeItems list in one string
        String finalString = "";
        List<dynamic> dataList = object["placeItems"];
        dataList.forEach((item){
          finalString = finalString + item + " | ";
        });

        items.add(Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2.0,
                  blurRadius: 5.0,
                ),]
            ),
            child: InkWell(
              onTap: (){
                print(object["placeName"]);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsView(name: object["placeName"]),
                ));
              },
              child:Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                  child: Image.asset(object["placeImage"],width: 80,height: 80, fit: BoxFit.cover,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      Text(object["placeName"]),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                        child: Text(finalString,overflow: TextOverflow.ellipsis ,style: TextStyle(fontSize: 12.0,color: Colors.black54),maxLines: 1,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          ),
        ));
      });
      return items;
    }

    //end
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffee1d23),
        title: Text("منيو المذاق",style: TextStyle(fontSize:32 , fontFamily: "Reem"),),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: () { Navigator.of(context).pop(); },),

      ),
      body: Container(
        height: screenHieght,
        width: screenWidth,
        child: SafeArea(
          child: SingleChildScrollView( 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
                //       Navigator.pop(context);
                //     }),
                //     Text("المذاق", style: TextStyle(fontSize:32 , fontFamily: "Reem"), ),
                //     IconButton(icon: Icon(Icons.location_on), onPressed: (){}),
                //   ],
                // ),
                Container(
                    width: screenWidth,
                    height: screenWidth*9/16,
                    child: PageView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    children: banners,
                      ),
                    ),
                  Container(
                  child: FutureBuilder(
                    initialData: <Widget>[Text("")],
                    future: createList(path),
                    builder:(context,snapshot){
                      if(snapshot.hasData){
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ListView(
                            primary: false,
                            shrinkWrap: true,
                            children: snapshot.data,
                          ),
                        );
                      }else{
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
