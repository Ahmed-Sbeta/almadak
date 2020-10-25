import 'package:flutter/material.dart';

class branches extends StatefulWidget{
  @override
  _branchesState createState() => _branchesState();
}

class _branchesState extends State<branches>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/mm.jpeg'),
                fit: BoxFit.cover
            )
        ),

        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.8),
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
                SizedBox(height: 0,),
                Center(child: Image.asset('assets/images/madaq4.png', scale: 3,),),
                Column(
                  children: [
                    Text('فروع المذاق', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                    // Text("", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),
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
                        child: Text("حي الاندلس 1", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("للشاورما والمشويات - بالقرب من قاعة الشعب", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

                    ),
                    SizedBox(height: 5,),
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
                        child: Text("حي الاندلس 2", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("بيتزا ومعجنات - بالقرب من قاعة الشهداء", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

                    ),
                    SizedBox(height: 5,),
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
                        child: Text("الجرابة", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("للشاورما والمشويات - شارع جعفر بن أبي طالب", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

                    ),
                    SizedBox(height: 3,),
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
                        child: Text("VIP حي الاندلس", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("للشاورما والمشويات - بالقرب من مصرف التجاري الوطني", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

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

