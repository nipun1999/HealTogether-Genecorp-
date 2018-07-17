import 'package:flutter/material.dart';
import 'package:heal_together/createAcc1.dart';
import 'package:heal_together/medicine.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:heal_together/loginmain.dart';
class Register1 extends StatefulWidget {
  @override
  _Register1State createState() => new _Register1State();
}

class _Register1State extends State<Register1> {
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
                                        new Icon(Icons.lock,size: 20.0,color: Colors.black38,),
                                        new Text("Please Enter the security code from sms",style: new TextStyle(fontSize: 15.0,color: Colors.black,fontFamily: "century"),)
                                      ],
                                    )
                                ),
                                new Container(
                                    margin: const EdgeInsets.only(top: 5.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Container(
                                            width: 300.0,
                                            child: new Form(child: new Theme(data: new ThemeData(primarySwatch: Colors.grey,
                                                inputDecorationTheme: new InputDecorationTheme(
                                                    labelStyle: new TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15.0,
                                                    )
                                                )), child: new TextFormField(decoration: new InputDecoration(
                                            ),
                                              keyboardType: TextInputType.number,)))
                                        ),
                                      ],
                                    )
                                ),
                                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                                new Container(
                                    width: 700.0,
                                    height: 45.0,
                                    child: new RaisedButton(onPressed: (){
                                      Navigator.push(context, new MaterialPageRoute(builder: (context) => new LoginMain()));
                                    },
                                      color: Colors.grey[200],
                                      child: new Text("OK",style: new TextStyle(fontSize: 20.0,fontFamily: "century",color: Colors.black),),)
                                ),

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

