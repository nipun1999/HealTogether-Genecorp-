import 'package:flutter/material.dart';
import 'package:heal_together/createAcc1.dart';
import 'package:heal_together/medicine.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Color gradientstart = new Color(0xFFFAAC6B);
    Color gradientend = new Color(0xFFF27478);
    Color gradientbuttonstart = new Color(0xFFDF42C4);
    Color gradientbuttonend = new Color(0xFFF15093);
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient( colors: [gradientend, gradientstart],
                    begin: new FractionalOffset(0.0, 0.8),
                    end: new FractionalOffset(0.7, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                shape: BoxShape.rectangle
            ),
          ),
          new Container(
            child: new ListView(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(top: 80.0,left: 20.0,right: 20.0),
                  height: 400.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.circular(15.0),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0)
                      ),
                    ],
                  ),
                  child: new Container(
                    margin: const EdgeInsets.only(top: 25.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                              child: new Text("Sign In",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0,color: Colors.black),
                              ),),
                          ],
                        ),
                        new Container(
                            child:  new Form(
                                child:new Theme(data: ThemeData(
                                    primarySwatch: Colors.grey,
                                    inputDecorationTheme: new InputDecorationTheme(
                                        labelStyle: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        )
                                    )
                                ), child: new Container(
                                  padding: const EdgeInsets.all(20.0),
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      new TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: "Enter Email",
                                        ),
                                        keyboardType: TextInputType.emailAddress,
                                      ),
                                      new TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: "Enter Password",
                                        ),
                                        keyboardType: TextInputType.text,
                                        obscureText: true,
                                      ),
                                      new Padding(padding: const EdgeInsets.only(top: 20.0),),
                                      new Container(
                                        child: new Row(
                                          children: <Widget>[
                                            new Text("Forgot Password ?",style: new TextStyle(color: Colors.grey,fontSize: 13.0),),
                                            new Padding(padding: const EdgeInsets.only(left: 78.0)),
                                            new Text("Remember Me",style: new TextStyle(color: Colors.grey,fontSize: 13.0),),
                                          ],
                                        ),
                                      ),
                                      new Padding(padding: const EdgeInsets.only(top: 35.0))
                                      ,
                                      new Container(
                                        decoration: new BoxDecoration(
                                            gradient: new LinearGradient( colors: [gradientbuttonstart, gradientbuttonend],
                                                begin: new FractionalOffset(0.0, 0.8),
                                                end: new FractionalOffset(0.7, 0.0),
                                                stops: [0.0, 2.0],
                                                tileMode: TileMode.clamp),
                                            borderRadius: new BorderRadius.circular(50.0)
                                        ),
                                        width: 300.0,
                                        height: 50.0,
                                        child: new RaisedButton(
                                          color: Colors.transparent,
                                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
                                          textColor: Colors.white,
                                          child: new Text("Get Started",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                          onPressed: (){
                                            Navigator.push(context, new MaterialPageRoute(builder: (context) => new medicine()));
                                          },
                                        ),
                                      ),],
                                  )
                                  ,)
                                ))
                        ),

                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 60.0,
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(image: new AssetImage("images/facebook.png"),fit: BoxFit.cover),
                                  borderRadius: new BorderRadius.circular(8.0)
                              ),
                            ),
                            new Container(
                              width: 55.0,
                              height: 55.0,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(image: new AssetImage("images/google.png"),fit: BoxFit.cover),
                                  borderRadius: new BorderRadius.circular(8.0)
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                new Container(
                    width: 500.0,
                    height: 60.0,

                    margin: const EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0),
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient( colors: [gradientbuttonstart, gradientbuttonend],
                            begin: new FractionalOffset(0.0, 0.8),
                            end: new FractionalOffset(0.7, 0.0),
                            stops: [0.0, 2.0],
                            tileMode: TileMode.clamp),
                        borderRadius: new BorderRadius.circular(50.0)
                    ),
                    child: new RaisedButton(
                      color: Colors.transparent,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
                      textColor: Colors.white,
                      child: new Text("Create Account",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new createAcc1()));

                      },
                    )
                ),
                new Container(
                    margin: const EdgeInsets.only(top: 20.0,left: 30.0),
                    child: new Text("By signing in you agree to our Terms And Conditions",style: new TextStyle(color: Colors.white,fontSize: 13.0),)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
