import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'calender.dart';

class journal extends StatefulWidget {
  @override
  _journalState createState() => _journalState();
}

class _journalState extends State<journal> {
  bool _value = false;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  DateTime _date = new DateTime.now();
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();



  Future<Null> _selectdate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2030));
    if (picked != null && picked != _date) {
      print('Date Selected: ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }
  }

  final titlecontroller = new TextEditingController();
  final notescontroller = new TextEditingController();

  Future<String> createEntry() async {

          var entry = <String, dynamic>{
      'date': _getDate(),
      'title': _getTitle(),
      'notes': _getNotes()
    };
    DatabaseReference mdatabase = FirebaseDatabase.instance.reference().child("testing").push();
    mdatabase.set(entry);
    titlecontroller.clear();
    notescontroller.clear();
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new calender()));
    return mdatabase.key;

  }

  String _getDate() {
    return _date.toString().substring(0,10);
  }
  
  String _getTitle(){
    return titlecontroller.text.toString();
  }

  String _getNotes(){
    return notescontroller.text.toString();
  }

  _showSnackBar(String value){
     final snackbar = new SnackBar(
      content: new Text(value)
    );
    _scaffoldstate.currentState.showSnackBar(snackbar);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink,
        brightness: Brightness.light,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: new Text("Add Journal"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              createEntry().whenComplete
              (
                _showSnackBar("Successfully Added"),
              );
            },
            icon: Icon(Icons.save),
            alignment: Alignment.centerRight,
          )
        ],
      ),
      key: _scaffoldstate,
      bottomNavigationBar: new Material(
          color: Colors.white,
          child: new Container(
            color: Colors.white,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    _selectdate(context);
                  },
                  icon: Icon(Icons.calendar_today),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.image),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "Public",
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Switch(
                      value: _value,
                      onChanged: (bool value) {
                        _onChanged(value);
                      },
                    )
                  ],
                )
              ],
            ),
          )),
      body: new Container(
        child: new ListView(
          shrinkWrap: true,
          children: <Widget>[
            new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20.0),
                child: new Text(
                  "Entry for: ${_date.toString().substring(0,10)}",
                  style: new TextStyle(
                      color: Colors.pink,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                )),
            new Container(
                child: new Form(
                    child: new Theme(
                        data: ThemeData(
                            primarySwatch: Colors.grey,
                            inputDecorationTheme: new InputDecorationTheme(
                                labelStyle: new TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15.0,
                            ))),
                        child: new Container(
                            padding: const EdgeInsets.all(20.0),
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new TextFormField(
                                    decoration: new InputDecoration(
                                        hintText: "Add a Title",
                                        border: InputBorder.none,
                                        hintStyle: new TextStyle(
                                          fontSize: 23.0,
                                        )),
                                    maxLines: 1,
                                    controller: titlecontroller,
                                    style: new TextStyle(
                                        fontSize: 23.0, color: Colors.black),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                  new TextFormField(
                                    decoration: new InputDecoration(
                                        hintText: "Start Writing",
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: InputBorder.none),
                                    keyboardType: TextInputType.text,
                                    controller: notescontroller,
                                    maxLines: 25,
                                  ),
                                ]))))),
          ],
        ),
      ),
    );
  }
}


class NotesEntry {
  String dateTime;

  NotesEntry(this.dateTime);

  toJson(){
    return{
      "date":dateTime,
    };
  }

  
}