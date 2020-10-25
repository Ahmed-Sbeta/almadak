import 'package:flutter/material.dart';


class StarterPage extends StatefulWidget{
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/starterpage.jpg'),
                fit: BoxFit.cover
            )
        ),

        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),

          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 10,),
                Center(child: Image.asset('assets/images/madaq4.png', scale: 3,),),
                Column(
                  children: [
                    Text('مطعم المذاق', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                    Text("تأسس الفرع الاول في عام 2012 في حي الاندلس \n و حرصنا علي تقديم افضل الوجبات و الذي \n حقق رواجا رائعاً و شعبية كبيرة", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffee1d23),
                                Color(0xffee1d23)
                              ]
                          )
                      ),
                      child: MaterialButton(
                        onPressed: (){
                        },
                        minWidth: double.infinity,
                        child: Text("منيو المذاق", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffee1d23),
                                Color(0xffee1d23)
                              ]
                          )
                      ),
                      child: MaterialButton(
                        onPressed: (){
                        },
                        minWidth: double.infinity,
                        child: Text("فروع المذاق", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                  ],
                ),
                Text("مطعم المذاق هو عشق لمذاق لن تجدة الا في مطاعم المذاق ", style: TextStyle(color: Colors.white70, fontSize: 15),textAlign: TextAlign.center,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

