import 'package:almadak/screens/menu1.dart';
import 'package:almadak/screens/menu2.dart';
import 'package:almadak/screens/menu3.dart';
import 'package:almadak/screens/menu4.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'branches/branchesClass.dart';

List<Branches> branchesList = [
  Branches(name: 'المذاق 1 - مشويات',image: "assets/images/mashwe.jpg" ,location: "ضصثض",number: '09254654',description: "حي الأندلس"),
  Branches(name: 'المذاق 2 - معجنات',image: "assets/images/salad.jpg" ,location: "ضصثض",number: '09254654',description: "حي الأندلس"),
  Branches(name: 'المذاق 3 - مشويات',image: "assets/images/meals_meat.jpg" ,location: "ضصثض",number: '09254654',description:"الجرابه" ),
  Branches(name: 'المذاق 4 - مشويات',image: "assets/images/happybox.jpg" ,location: "ضصثض",number: '09254654',description: "حي الأندلس VIP"),

];

Future<void> _makePhoneCall(String num) async {
  if(await canLaunch(num)){
    await launch(num);
  }else{
    throw 'Could not call $num';
  }
}
// ignore: camel_case_types
class branches extends StatefulWidget{
  @override
  _branchesState createState() => _branchesState();
}

// ignore: camel_case_types
class _branchesState extends State<branches>{
  Future<void> _makePhoneCall(String num) async {
    if(await canLaunch(num)){
      await launch(num);
    }else{
      throw 'Could not call $num';
    }
  }
  Future<void> _mapInBrowser(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceSafariVC: false , forceWebView: false );
    }else{
      throw 'Could not open map';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffee1d23),
        title: Text("فروع المذاق",style: TextStyle(fontSize:32 , fontFamily: "Reem"),),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: () { Navigator.of(context).pop(); },),

      ),
      body:new ListView.builder(
        itemBuilder: (context,index){
        return new Padding(
          padding: new EdgeInsets.symmetric(vertical: 8.0,horizontal:16.0),
         child: new Card(
           color: Colors.white,
           elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
             ),
           child:Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    child: new Image.asset(branchesList[index].image),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0),topRight:Radius.circular(16.0)),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(16.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          branchesList[index].name,
                          style: TextStyle(fontSize: 24)
                        ),
                        new SizedBox(height: 16.0,),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Menu1(),
                                ));
                              },
                              child: Row(
                                children: [
                                  Text("منيو"),
                                  SizedBox(width: 4.0,),
                                  Icon(Icons.import_contacts,
                                  color:Color(0xffee1d23) ,)
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text("اتصــال",textAlign: TextAlign.center),
                                SizedBox(width: 4.0,),
                                Icon(Icons.call,
                                  color:Color(0xffee1d23) ,),
                              ],
                            ),
                            Row(
                              children: [
                                Text(branchesList[index].description,textAlign: TextAlign.right),
                                Icon(Icons.location_on,
                                  color:Color(0xffee1d23) ,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
           ),
         ),
      );
    },
    itemCount: 4,
    ),
    );
  }
}

