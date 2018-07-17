import 'package:flutter/material.dart';
import 'package:heal_together/createAcc1.dart';
import 'package:heal_together/medicine.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginMain extends StatefulWidget {
  @override
  _LoginMainState createState() => new _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    Color gradientstart = new Color(0xFFFAAC6B);
    Color gradientend = new Color(0xFFF27478);
    Color gradientbuttonstart = new Color(0xFFDF42C4);
    Color gradientbuttonend = new Color(0xFFF15093);
    return new Scaffold(
        body: new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Image(image: new AssetImage("images/background2.jpg"),
                fit: BoxFit.cover,)
              ,new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center
                        ,children: <Widget>[
                        new Container(
                            width: 350.0,
                            height: 230.0
                            ,decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            new BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: new Offset(0.0, 10.0)
                            ),
                          ],
                        ),
                            child: new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Container(
                                        margin: const EdgeInsets.only(left:15.0,top: 10.0)
                                        ,child: new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Text("Welcome To",style: new TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: "century"),),
                                        new Padding(padding: const EdgeInsets.only(left: 10.0))
                                        ,new Text("Heal Together",style: new TextStyle(fontSize: 25.0,color: Colors.black87,fontWeight: FontWeight.bold,fontFamily: "century"),)
                                      ],
                                    )
                                    ),

                                  ],
                                ),
                                new Container(
                                    margin: const EdgeInsets.only(left: 15.0,top: 25.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Icon(Icons.share,size: 20.0,color: Colors.black38,),
                                        new Padding(padding: const EdgeInsets.only(left: 10.0)),
                                        new Text("Login With",style: new TextStyle(fontSize: 15.0,color: Colors.black,fontFamily: "century"),)
                                      ],
                                    )
                                ),
                                new Padding(padding: const EdgeInsets.only(top: 20.0)),

                                new Container(
                                  margin: const EdgeInsets.only(left: 20.0),
                                  child: new Row(
                                    children: <Widget>[
                                      new GestureDetector(
                                        child: new Container(
                                          margin: const EdgeInsets.only(right: 10.0),
                                          width: 55.0,
                                          height: 55.0,
                                          decoration: new BoxDecoration(
                                              image: new DecorationImage(image: new AssetImage("images/facebookrect.png"),fit: BoxFit.cover),
                                              borderRadius: new BorderRadius.circular(3.0)
                                          ),
                                        ),
                                        onTap: (){
                                          print("Clicked Facebook");
                                        },
                                      ),

                                      new Padding(padding: const EdgeInsets.only(left: 15.0)),
                                      new Container(
                                        margin: const EdgeInsets.only(right: 10.0),
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(image: new AssetImage("images/googlerect.png"),fit: BoxFit.cover),
                                            borderRadius: new BorderRadius.circular(3.0)
                                        ),
                                      ),
                                      new Padding(padding: const EdgeInsets.only(left: 15.0)),
                                      new Container(
                                        margin: const EdgeInsets.only(right: 10.0),
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(image: new AssetImage("images/twitterrect.png"),fit: BoxFit.cover),
                                            borderRadius: new BorderRadius.circular(3.0)
                                        ),
                                      ),
                                      new Padding(padding: const EdgeInsets.only(left: 15.0)),
                                      new Container(
                                        margin: const EdgeInsets.only(right: 10.0),
                                        width: 55.0,
                                        height: 55.0,
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(image: new AssetImage("images/linkedinrect.png"),fit: BoxFit.cover),
                                            borderRadius: new BorderRadius.circular(3.0)
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                      )
                    ],
                  )
              )
            ]
        )
    );
  }
}

