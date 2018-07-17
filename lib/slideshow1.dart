import 'package:flutter/material.dart';

class slideshow1 extends StatelessWidget {

  Color gradientstart = new Color(0xFFd60063);
  Color gradientend = new Color(0xFFad007f);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: new Color(0xFFff357e),
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
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(top: 120.0),
                      width: 240.0,
                      height: 240.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(image: new AssetImage("images/nurse.png"),fit: BoxFit.cover),
//                  borderRadius: new BorderRadius.circular(150.0),
//                    border: new Border.all(
//                        color: Colors.black,
//                        width: 0.5
//                    )
                      ),

                    ),
                  ],
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: new Text("Your Go-To Cancer Tool",style: new TextStyle(color: new Color(0xFFFAAC6B),fontSize: 25.0,fontFamily: "century",fontWeight: FontWeight.bold),),
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  child: new Text("Personalise your cancer information and",style: new TextStyle(color: Colors.white,fontSize:15.0,fontFamily: "century",fontWeight: FontWeight.bold),),
                ),
                new Container(
                  child: new Text("organise your journey",style: new TextStyle(color: Colors.white,fontSize: 15.0,fontFamily: "century",fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        )
    );
  }
}
