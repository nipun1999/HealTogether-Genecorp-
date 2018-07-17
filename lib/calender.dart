import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'journal.dart';










class calender extends StatefulWidget {
  @override
  _calenderState createState() => _calenderState();
}

class _calenderState extends State<calender> {

  StreamSubscription _subscriptionTodo;
  List<Item> items = List();
  Item item;
  DatabaseReference itemRef;









  void handleNewDate(date) {
    print(date);
  }


  String _title = "Title of Post";
  String _desc = 'Desc of Post';


  @override
  void initState(){
    // FirebaseTodos.getTodoStream("-LHMMWqVofR69zPsvVB7", _updateTodo).then((StreamSubscription s)=> _subscriptionTodo = s);
        super.initState();
        item = Item("", "");
        itemRef = FirebaseDatabase.instance.reference().child('testing');
        itemRef.onChildAdded.listen(_onEntryAdded);
        itemRef.onChildChanged.listen(_onEntryChanged);
      }

      _onEntryAdded(Event event){
          setState(() {
                      items.add(Item.fromSnapshot(event.snapshot));
                    });
      }

      _onEntryRemoved(Event event){
        setState(() {
                  items.remove(Item.fromSnapshot(event.snapshot));
                });
      }

      _onEntryChanged(Event event){
        var old = items.singleWhere((entry){
          return entry.key == event.snapshot.key;
        });
        setState(() {
                  items[items.indexOf(old)] = Item.fromSnapshot(event.snapshot);
                });
      }


  @override
  void dispose(){
    // if(_subscriptionTodo != null){
    //   _subscriptionTodo.cancel();
    // }
    super.dispose();
  }




    
      
    
      @override
      Widget build(BuildContext context) {

              var card1 = new ListTile(
      title: new Container(
        child: new Container(
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
                                        new Text('$_title',style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16.0),),
                                        new Text('$_desc',style: new TextStyle(color: Colors.black54,fontSize: 12.0),)
                                      ],
                                    ),
                                    )
                              ],
                            ),
                          )),
      ),
    );




        return Scaffold(
          appBar: new AppBar(
              backgroundColor: Colors.pink,
              title: new Text("Calendar"),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => new journal()));
                },
                icon: Icon(Icons.arrow_back),
              )),
          body: new Container(
            child: new Column(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: new Calendar(
                    onDateSelected: (date) => handleNewDate(date),
                    isExpandable: true,
                  ),
                ),
                new Expanded(
                  child: new FirebaseAnimatedList(
                    query: itemRef,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot,Animation<double> animation, int index){
                      return new ListTile(
      title: new Container(
        child: new Container(
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
                                        new Text(items[index].title,style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16.0),),
                                        new Text(items[index].notes,style: new TextStyle(color: Colors.black54,fontSize: 12.0),)
                                      ],
                                    ),
                                    )
                              ],
                            ),
                          )),
      ),
    );;
                    },
                  ),
                )
              ],
            ),
          ),
        );
      }
    
       _updateTodo(Todo value) {

         var title = value.title;
         var desc = value.desc;
         setState(() {
                      _title = title;
                      _desc = desc;
                  });
  }
}


class Todo{
  final String key;
  String title;
  String desc;

  Todo.fromJson(this.key, Map data){
    title = data['title'];
    desc = data['notes'];
    if(title == null){
      title = "";
    }
    if(desc == null){
      desc = "";
    }

  }
}

class FirebaseTodos{
  static Future<StreamSubscription<Event>> getTodoStream(String todokey,void onData(Todo todo))async{
    
    StreamSubscription<Event> subscription = FirebaseDatabase.instance.reference().child("testing").child(todokey).onValue.listen((Event event){
      var todo = new Todo.fromJson(event.snapshot.key, event.snapshot.value);
      onData(todo);
    });
    return subscription;
  }

  static Future<Todo>getTodo(String todokey)async{
    Completer<Todo> completer = new Completer<Todo>(
    );
    FirebaseDatabase.instance.reference().child("testing").child(todokey).once().then((DataSnapshot snapshot){
      var todo = new Todo.fromJson(snapshot.key, snapshot.value);
      completer.complete(todo);
    });
    return completer.future;
  }


}


class Item{
  String key;
  String title;
  String notes;

  Item(this.title,this.notes);

  Item.fromSnapshot(DataSnapshot snapshot)
    :key = snapshot.key,
    title = snapshot.value["title"],
    notes = snapshot.value["notes"];

  toJson(){
    return{
      "title": title,
      "notes": notes,
    };
  }
}