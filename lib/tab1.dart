import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child:new Column(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.only(top: 20.0,left: 40.0,right: 40.0)),
              new Container(
                width: 350.0,
                height: 50.0,
                child: new RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.add),
                    new Padding(padding: const EdgeInsets.only(left: 10.0)),
                    new Text("Add Cancer Type",style: new TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                onPressed: (){},
              ),
              )
            ],
          )
    );
  }
}
