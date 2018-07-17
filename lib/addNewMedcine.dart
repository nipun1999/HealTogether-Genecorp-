import 'package:flutter/material.dart';
import 'dart:async';
import 'package:numberpicker/numberpicker.dart';


class addMedicine extends StatefulWidget {
  @override
  _addMedicineState createState() => new _addMedicineState();
}

class _addMedicineState extends State<addMedicine> {

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();
  double _dosage = 1.00;
  double _days = 1.00;
  void _onChanged(double value){
    setState(() {
      _days = value; 
    });
  }
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



  Future<Null> _selecttime(BuildContext context) async {
    final TimeOfDay picked  = await showTimePicker(context: context, initialTime: _time);
    if(picked!=null && picked!=_time){
      print('Date Selected: ${_time.toString()}');
      setState(() {
        _time = picked;
      });
    }
  }

  _showDosagePicker(BuildContext context) {
    showDialog(
      context: context,
      child: new NumberPickerDialog.decimal(
        minValue: 0,
        maxValue: 2,
        initialDoubleValue: _dosage,
        title: new Text("Enter your Dosage"),
      ),
    ).then((value) {
      if (value != null) {
        setState(() => _dosage = value);
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.pink,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.done), onPressed: null)
          ],
          iconTheme: new IconThemeData(
            color: Colors.white,
          ),
          title: new Text("Add New Medicine",style: new TextStyle(color: Colors.white),),
        ),
        body: new Container(
          child: new Form(child: new Theme(data: ThemeData(
              primarySwatch: Colors.pink,
              inputDecorationTheme: new InputDecorationTheme(
                  labelStyle: new TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15.0,
                  )
              )
          ), child: new Container(
            padding: const EdgeInsets.all(20.0),
              child: new ListView(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Medicine Name",
                  ),
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Problem Name",
                  ),
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Color/Shape Of Medicine",
                  ),
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new InkWell(
                  child: new Row(children: <Widget>[
                    new Icon(Icons.touch_app,size: 20.0,color: Colors.pink,),
                    new Padding(padding: const EdgeInsets.only(left: 10.0)),
                    new Text('Dosage  ',style: new TextStyle(color: Colors.pink,fontSize: 13.0,fontWeight: FontWeight.bold),),
                    new Text(" ${_dosage.toString()}",style: new TextStyle(fontWeight: FontWeight.bold),)
                  ],),
                  onTap: (){
                    _showDosagePicker(context);
                  },
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new Container(
                  width: 100.0,
                  height: 1.5,
                  color: Colors.grey,
                ),
                new Padding(padding: const EdgeInsets.only(top: 25.0)),
                new InkWell(
                 child: new Row(children: <Widget>[
                   new Icon(Icons.touch_app,size: 20.0,color: Colors.pink,),
                   new Padding(padding: const EdgeInsets.only(left: 10.0)),
                   new Text('Time  ',style: new TextStyle(color: Colors.pink,fontSize: 13.0,fontWeight: FontWeight.bold),),
                   new Text(" ${_time.toString()}",style: new TextStyle(fontWeight: FontWeight.bold),)
                 ],),
                  onTap: (){
                    _selecttime(context);
                  },
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new Container(
                  width: 100.0,
                  height: 1.5,
                  color: Colors.grey,
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new InkWell(
                  child: new Row(children: <Widget>[
                    new Icon(Icons.touch_app,size: 20.0,color: Colors.pink,),
                    new Padding(padding: const EdgeInsets.only(left: 10.0)),
                    new Text('Start Day:  ',style: new TextStyle(color: Colors.pink,fontSize: 13.0,fontWeight: FontWeight.bold),),
                    new Text(" ${_date.toString()}",style: new TextStyle(fontWeight: FontWeight.bold),)
                  ],),
                  onTap: (){
                    _selectdate(context);
                  },
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new Container(
                  width: 100.0,
                  height: 1.5,
                  color: Colors.grey,
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Row(
                    children: <Widget>[
                      new Text('Duration in days:- ',style: new TextStyle(color: Colors.pink,fontSize: 13.0,fontWeight: FontWeight.bold),),
                      new Text(" ${_days.round()}",style: new TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  )
                ),
                new Padding(padding: const EdgeInsets.only(top: 10.0)),
                new Slider(value: _days, onChanged: (double value){_onChanged(value);},min: 1.0,max: 30.0,),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new Container(
                  width: 100.0,
                  height: 1.5,
                  color: Colors.grey,
                ),
              ],
            ),
          ))
          ),
        ));
  }
}
