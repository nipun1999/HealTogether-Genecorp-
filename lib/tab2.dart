import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(left: 30.0)),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.send,color: Colors.grey,),
                    new Text("Newbie",style: new TextStyle(color: Colors.grey,fontSize: 10.0,fontFamily: "century"),),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(left: 100.0)),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.airplanemode_active,color: Colors.grey,),
                    new Text("Beginner",style: new TextStyle(color: Colors.grey,fontSize: 10.0,fontFamily: "century"),),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(left: 100.0)),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.send,color: Colors.grey,),
                    new Text("Intermediate",style: new TextStyle(color: Colors.grey,fontSize: 10.0,fontFamily: "century"),),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(left: 100.0)),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.airplanemode_active,color: Colors.grey,),
                    new Text("Advanced",style: new TextStyle(color: Colors.grey,fontSize: 10.0,fontFamily: "century"),),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(left: 100.0)),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.send,color: Colors.grey,),
                    new Text("Pro",style: new TextStyle(color: Colors.grey,fontSize: 10.0,fontFamily: "century"),),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(left: 100.0)),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.airplanemode_active,color: Colors.grey,),
                    new Text("Champ",style: new TextStyle(color: Colors.grey,fontSize: 10.0,fontFamily: "century"),),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(left: 100.0)),
              ],
            )
          ],
        )
    );
  }
}