import 'package:flutter/material.dart';

class menu extends StatefulWidget{
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/kkk.jpg'),
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
                    Colors.black.withOpacity(.5),
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
                    Text('منيو المذاق', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                    Text("تختلف المنيو من فرع إلي أخر", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),
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
                        child: Text("منيو المذاق 1", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("حي الاندلس 1 - للشاورما والمشويات", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

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
                        child: Text("منيو المذاق 2", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("حي الاندلس 2 - بيتزا ومعجنات", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

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
                        child: Text("منيو المذاق 3", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("جرابة - للشاورما والمشويات", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

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
                        child: Text("منيو المذاق 4", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      child: Text("حي الاندلس - للشاورما والمشويات VIP", style: TextStyle(color: Colors.white, fontSize: 13),textAlign: TextAlign.center),

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

