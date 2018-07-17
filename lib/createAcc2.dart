import 'package:flutter/material.dart';
import 'package:heal_together/createAcc3.dart';

class createAcc2 extends StatelessWidget {
  Color gradientstart = new Color(0xFFFAAC6B);
  Color gradientend = new Color(0xFFF27478);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: new Stack(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(top: 35.0),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center
                      , children: <Widget>[
                      new Text("Heal Together", style: new TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Avenir',
                          color: new Color(0xFFF15093)),),

                    ],
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 18.0),
                      width: 350.0,
                      height: 6.0,
                      child: new LinearProgressIndicator(
                        backgroundColor: Colors.grey[300],
                        valueColor: new AlwaysStoppedAnimation(
                            Color(0xFFFAAC6B)),
                        value: 0.50,
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 60.0),
                      child: new Text("Please enter your email address:-",
                        style: new TextStyle(fontSize: 22.0),),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 40.0),
                      child: new Form(child: new Theme(data: new ThemeData(
                          primarySwatch: Colors.pink,
                          inputDecorationTheme: new InputDecorationTheme(
                              labelStyle: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15.0
                              )
                          )
                      ), child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),)),
                    ),

                    new Expanded(child: new FittedBox(
                        fit: BoxFit.none
                        , alignment: FractionalOffset.bottomCenter,
                        child: new Container(
                          height: 70.0,
                          width: 360.0
                          , child: new RaisedButton(
                          color: new Color(0xFFF15093),
                          textColor: Colors.white,
                          child: new Text("Next", style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0),),
                          onPressed: (){
                            Navigator.push(context, new MaterialPageRoute(builder: (context) => new createAcc3()));
                          },

                        ),
                        )
                    ))
                    ,


                  ],
                ),
              )
            ]
        )
    );
  }
}