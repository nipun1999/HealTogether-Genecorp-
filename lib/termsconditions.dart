import 'package:flutter/material.dart';
import 'package:heal_together/createAcc1.dart';
import 'package:heal_together/medicine.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:heal_together/Login.dart';

class Terms1 extends StatefulWidget {
  @override
  _Terms1State createState() => new _Terms1State();
}

class _Terms1State extends State<Terms1> {

  bool _ischecked1 = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;
  bool _ischecked4 = false;

  void _onChanged1(bool value){
    setState(() {
      _ischecked1 = value;
    });
  }
  void _onChanged2(bool value){
    setState(() {
      _ischecked2 = value;
    });
  }
  void _onChanged3(bool value){
    setState(() {
      _ischecked3 = value;
    });
  }
  void _onChanged4(bool value){
    setState(() {
      _ischecked4 = value;
    });
  }

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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center
                        ,children: <Widget>[
                        new Container(
                            width: 350.0,
                            height: 450.0,
                            decoration: new BoxDecoration(
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
                            child: new ListView(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Container(
                                        margin: const EdgeInsets.only(left:15.0,top: 10.0)
                                        ,child: new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Text("TERMS AND",style: new TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: "century"),),
                                        new Padding(padding: const EdgeInsets.only(left: 10.0))
                                        ,new Text("PRIVACY",style: new TextStyle(fontSize: 25.0,color: Colors.black87,fontWeight: FontWeight.bold,fontFamily: "century"),)
                                      ],
                                    )
                                    ),

                                  ],
                                ),
                                new Container(
                                    margin: const EdgeInsets.only(left: 15.0,top: 25.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Icon(Icons.error,size: 20.0,color: Colors.red,),
                                        new Padding(padding: const EdgeInsets.only(left: 10.0)),
                                        new Text("Privacy Statement",style: new TextStyle(fontSize: 14.0,color: Colors.black,fontFamily: "century"),),
                                        new Padding(padding: const EdgeInsets.only(left: 100.0)),
                                        new Container(
                                          child: new Checkbox(value: _ischecked1,
                                              activeColor: Colors.green,
                                              onChanged:(bool value){_onChanged1(value);}),
                                        ),

                                      ],
                                    )
                                ),
                                new Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  width: 700.0,
                                  height: 1.0,
                                  color: Colors.grey[300],
                                ),
                                new Container(
                                    margin: const EdgeInsets.only(left: 15.0,top: 5.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Icon(Icons.error,size: 20.0,color: Colors.red,),
                                        new Padding(padding: const EdgeInsets.only(left: 10.0)),
                                        new Text("Data Protection Consent",style: new TextStyle(fontSize: 14.0,color: Colors.black,fontFamily: "century"),),
                                        new Padding(padding: const EdgeInsets.only(left: 55.0)),
                                        new Container(
                                          child: new Checkbox(value: _ischecked2,
                                              activeColor: Colors.green,
                                              onChanged:(bool value){_onChanged2(value);}),
                                        ),

                                      ],
                                    )
                                ),
                                new Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  width: 700.0,
                                  height: 1.0,
                                  color: Colors.grey[300],
                                ),
                                new Container(
                                    margin: const EdgeInsets.only(left: 15.0,top: 5.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Icon(Icons.error,size: 20.0,color: Colors.red,),
                                        new Padding(padding: const EdgeInsets.only(left: 10.0)),
                                        new Text("User Protection",style: new TextStyle(fontSize: 14.0,color: Colors.black,fontFamily: "century"),),
                                        new Padding(padding: const EdgeInsets.only(left: 122.0)),
                                        new Container(
                                          child: new Checkbox(value: _ischecked3,
                                              activeColor: Colors.green,
                                              onChanged:(bool value){_onChanged3(value);}),
                                        ),

                                      ],
                                    )
                                ),
                                new Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  width: 700.0,
                                  height: 1.0,
                                  color: Colors.grey[300],
                                ),
                                new Container(
                                    margin: const EdgeInsets.only(left: 15.0,top: 5.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Icon(Icons.error,size: 20.0,color: Colors.red,),
                                        new Padding(padding: const EdgeInsets.only(left: 10.0)),
                                        new Text("Terms Of Use",style: new TextStyle(fontSize: 14.0,color: Colors.black,fontFamily: "century"),),
                                        new Padding(padding: const EdgeInsets.only(left: 137.0)),
                                        new Container(
                                          child: new Checkbox(value: _ischecked4,
                                              activeColor: Colors.green,
                                              onChanged:(bool value){_onChanged4(value);}),
                                        ),

                                      ],
                                    )
                                ),
                                new Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  width: 700.0,
                                  height: 1.0,
                                  color: Colors.grey[300],
                                ),
                                new Padding(padding: const EdgeInsets.only(top: 50.0)),
                                new Container(
                                    width: 700.0,
                                    height: 45.0,
                                    child: new RaisedButton(onPressed: (){
                                      Navigator.push(context, new MaterialPageRoute(builder: (context) => new Login()));
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

