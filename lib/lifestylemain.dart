import 'package:flutter/material.dart';

class lifestylemain extends StatefulWidget {
  @override
  _lifestylemainState createState() => _lifestylemainState();
}

class _lifestylemainState extends State<lifestylemain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
              new Container(
                child: new Image(
              image: new AssetImage("images/background3.jpg"),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
            )),
            new Column(
                children: <Widget>[
                  new Padding(padding: const EdgeInsets.only(top: 100.0),),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  new Container(
                    child: new Text("Your",style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),),
                  ),
                  new Container(
                    child: new Text("Heal Together",style: new TextStyle(color: Colors.orangeAccent[400],fontWeight: FontWeight.bold,fontSize: 25.0),),
                  )
                    ],
                  ),

                ],
              )
        
              ],

            )
          ],
        ),
      ),
    );
  }
}
