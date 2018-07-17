import 'dart:async';

import 'package:flutter/material.dart';


class discover extends StatefulWidget {
  @override
  _discoverState createState() => _discoverState();
}

class _discoverState extends State<discover> {

  DateTime _date = new DateTime.now();

  Future<Null> _selectdate(BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2030));
    if(picked!=null && picked!=_date){
      print('Date Selected: ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }
  }

  


  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text("Discover"),
      backgroundColor: Colors.pink,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          alignment: Alignment.centerRight,
          icon: Icon(Icons.notifications),
        ),
      ],
    ),
    body: new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10.0,),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(left: 20.0,bottom: 5.0),
                  child: new Text("${_date.toString().substring(0,10)}",style: new TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                ),
                new Container(
                  margin: const EdgeInsets.only(right: 20.0,bottom: 5.0),
                  alignment: Alignment.bottomRight,
                  child: IconButton(onPressed: (){_selectdate(context);},icon: Icon(Icons.calendar_today)),
                )
              ],
            ),
          ),
          new Expanded(
            child: new ListView(
              children: <Widget>[
                Card,
                Card,
                Card
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}

final Card = new Container(
                      margin: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: new Offset(0.0, 10.0)),
                        ],
                      ),
                      child: new Container(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                                margin: const EdgeInsets.only(left: 20.0,bottom: 10.0,top: 5.0),
                                child: new Column(
                                  children: <Widget>[
                                    new Text("03",
                                        style: new TextStyle(
                                            color: Colors.blue[400],
                                            fontSize: 35.0,
                                            fontWeight: FontWeight.bold)),
                                    new Text(
                                      "Jan",
                                      style: new TextStyle(
                                          color: Colors.blue[400],
                                          fontSize: 15.0,fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                                new Container(
                                  margin: const EdgeInsets.only(left: 20.0),
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text("A slow but sure start",style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16.0),),
                                    new Text("Tuesday, 11:30 am",style: new TextStyle(color: Colors.black54,fontSize: 12.0),)
                                  ],
                                ),
                                )
                          ],
                        ),
                      ));