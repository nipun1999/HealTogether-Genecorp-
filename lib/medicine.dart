import 'package:flutter/material.dart';
import 'package:heal_together/addNewMedcine.dart';
import 'package:flutter/cupertino.dart';


class medicine extends StatefulWidget {
  @override
  _medicineState createState() => new _medicineState();
}

class _medicineState extends State<medicine> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink,
        iconTheme: new IconThemeData(
          color: Colors.white
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("Medicines",style: new TextStyle(color: Colors.white),),
      ),
      body: new Container(
        margin: const EdgeInsets.all(10.0),
          child: new ListView(
            children: <Widget>[
              medicinepost,
              medicinepost,
              medicinepost,
              medicinepost,
            ],
          ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new addMedicine()));
        },
        tooltip: 'Add',
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink,
        child: new Icon(Icons.add),
      ),
    );
  }
}


final medicinepost = new Container(
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

  child: new Container(
    margin: const EdgeInsets.only(left: 20.0,bottom: 10.0),
    child: new Row(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Container(
              width: 2.0,
              height: 40.0,
              color: Colors.pink,
            ),
            new Container(
              width: 20.0,
              height: 20.0,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(50.0),
                border: new Border.all(
                  color: Colors.pink,
                  width: 2.0
                )
              ),
            )
          ],
        ),

        new Container(
          margin: const EdgeInsets.only(left: 20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Disprin",style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.pink)),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
              child:  new Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Monday,Tueday,Wednesday",style: new TextStyle(fontSize: 12.0,color: Colors.black),),
                  new Container(
                    margin: const EdgeInsets.only(left: 5.0),
                    child: new Text("| Two Pills",style: new TextStyle(fontSize: 12.0,color: Colors.black)),
                  ),

                ],
              )),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
               child: new Text("12:41 pm",style: new TextStyle(fontSize: 12.0,color: Colors.black),),
              ),

            ],
          ),
        )
      ],
    )
  ),
);