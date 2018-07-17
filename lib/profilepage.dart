import 'package:flutter/material.dart';
import 'tab1.dart' as first;
import 'tab2.dart' as second;

class profilePage extends StatefulWidget {
  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage>
    with TickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink,
        iconTheme: new IconThemeData(color: Colors.white),
        title: new Text(
          "My HealTogether",
          style: new TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Container(
              color: Colors.grey[100],
              height: 100.0,
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(right: 10.0, left: 20.0),
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: new AssetImage("images/doctor.png"),
                            fit: BoxFit.cover),
                        borderRadius: new BorderRadius.circular(8.0)),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                  ),
                  new Container(
                      child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                      ),
                      new Text(
                        "Nipun Agarwal",
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Email address",
                        style: new TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
                ],
              ),
            ),
            new Container(
              width: 500.0,
              height: 1.0,
              color: Colors.grey[400],
            ),
            new Container(
                color: Colors.white,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new TabBar(
                      controller: controller,
                      tabs: <Tab>[
                        new Tab(
                          text: "Cancer",
                        ),
                        new Tab(
                          text: "Treatment",
                        ),
                      ],
                      labelColor: Colors.pink,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorColor: Colors.pink,
                      labelStyle: new TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "century"),
                    ),
                    new Container(
                      height: 490.0,
                      child: new TabBarView(
                          controller: controller,
                          children: <Widget>[
                            new first.First(),
                            new second.Second(),
                          ]),
                    ),
                  ],
                )),
            
          ],
        ),
      ),
    );
  }
}
