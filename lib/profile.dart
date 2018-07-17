import 'package:flutter/material.dart';
import 'package:heal_together/tab1.dart' as first;
import 'package:heal_together/tab2.dart' as second;
import 'package:heal_together/tab3.dart' as third;
import 'package:heal_together/tab4.dart' as fourth;


class profile extends StatefulWidget {
  @override
  _profileState createState() => new _profileState();
}

class _profileState extends State<profile> with TickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: new Color(0xFFfafafa),
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Profile",style: new TextStyle(color: Colors.black,fontFamily: "century",fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        width: 130.0,
                        height: 130.0,
                        margin: const EdgeInsets.only(top: 60.0),
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/doctor.png"),
                                fit: BoxFit.cover),
                            borderRadius: new BorderRadius.all(
                                new Radius.circular(100.0)),
                            border: new Border.all(
                                color: Colors.black,
                                width: 0.5
                            )
                        ),
                      ),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 50.0)),
                  new Text("Your Name",style: new TextStyle(fontFamily: "century",fontSize: 17.0,color: Colors.black),),
                  new Padding(padding: const EdgeInsets.only(top: 30.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Text("0"),
                            new Text("Points",style: new TextStyle(color: Colors.grey[400]),)
                          ],
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(left: 30.0,right: 30.0),
                        width: 2.0,
                        height: 30.0,
                        color: Colors.grey,
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Text("0"),
                            new Text("Friends",style: new TextStyle(color: Colors.grey[400]),)
                          ],
                        ),
                      )
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 20.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage("images/facebookrect.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      new Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage("images/googlerect.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      new Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage("images/linkedinrect.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      new Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage("images/twitterrect.png"),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 40.0)),
                  new Container(
                      color: Colors.white,
                      child: new Column(
                        children: <Widget>[
                          new Padding(padding: const EdgeInsets.only(top: 20.0))
                          ,new Text("CURRENT CATEGORY"),
                          new Padding(padding: const EdgeInsets.only(top: 10.0)),
                          new TabBar(controller: controller,
                            tabs: <Tab>[
                              new Tab(text: "Activity",),
                              new Tab(text: "Sleep",),
                              new Tab(text: "Heart Rate",),
                              new Tab(text: "Commute",),
                            ],labelColor: Colors.grey[800],isScrollable: true,unselectedLabelColor: Colors.grey[400],indicatorColor: Colors.grey[800],labelStyle: new TextStyle(fontWeight: FontWeight.bold,fontFamily: "century"),),
                          new Container(
                            width: 500.0,
                            height: 80.0,
                            child: new TabBarView(controller: controller
                                ,children: <Widget>[
                                  new first.First(),
                                  new second.Second(),
                                  new third.Third(),
                                  new fourth.Fourth()
                                ]),
                          ),

                        ],
                      )
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 20.0)),
                  new Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Padding(padding: const EdgeInsets.only(left: 20.0)),
                        new Icon(Icons.note,color: Colors.blue,),
                        new Padding(padding: const EdgeInsets.only(left: 30.0)),
                        new Text("PERSONAL RECORDS",style: new TextStyle(fontSize: 15.0),)
                      ],
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 30.0)),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        width:18.0,
                        height: 18.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("images/sport-shoes.png")),
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 15.0,top: 20.0)),
                      new Text("0",style: new TextStyle(fontFamily: "century",fontSize: 15.0),),
                      new Padding(padding: const EdgeInsets.only(left: 100.0,top: 20.0)),
                      new Text("Most Steps in A Day")
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 10.0)),
                  new Container(
                    width: 500.0,
                    height: 0.5,
                    color: Colors.grey[700],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 15.0)),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        width:18.0,
                        height: 18.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("images/like.png")),
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 15.0,top: 20.0)),
                      new Text("0 Bpm",style: new TextStyle(fontFamily: "century",fontSize: 15.0),),
                      new Padding(padding: const EdgeInsets.only(left: 63.0,top: 20.0)),
                      new Text("Best Avg Heart Rate")
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 10.0)),
                  new Container(
                    width: 500.0,
                    height: 0.5,
                    color: Colors.grey[700],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 15.0)),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        width:18.0,
                        height: 18.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("images/moon.png")),
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 15.0,top: 20.0)),
                      new Text("0: 00 H",style: new TextStyle(fontFamily: "century",fontSize: 15.0),),
                      new Padding(padding: const EdgeInsets.only(left: 60.0,top: 20.0)),
                      new Text("Most Hours of Deep Sleep")
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 10.0)),
                  new Container(
                    width: 500.0,
                    height: 0.5,
                    color: Colors.grey[700],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 15.0)),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        width:18.0,
                        height: 18.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage("images/co2.png")),
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 15.0,top: 20.0)),
                      new Text("0 CO2/g",style: new TextStyle(fontFamily: "century",fontSize: 15.0),),
                      new Padding(padding: const EdgeInsets.only(left: 45.0,top: 20.0)),
                      new Text("Most CO2/g Savings in a Day")
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 10.0)),
                  new Container(
                    width: 500.0,
                    height: 0.5,
                    color: Colors.grey[700],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 20.0)),
                  new Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 20.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Text("BEST RISK CATEGORY",style: new TextStyle(fontSize: 15.0,)
                            )],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 5.0)),
                        
                      ],
                    ),
                  ),
                  new SizedBox(
                    width: 500.0,
                    height: 150.0,
                    child: new Container(
                      color: Colors.white,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          new Padding(padding: const EdgeInsets.only(left: 25.0)),
                          ListCard,
                          new Padding(padding: const EdgeInsets.only(left: 30.0)),
                          ListCard,
                          new Padding(padding: const EdgeInsets.only(left: 30.0)),
                          ListCard,
                          new Padding(padding: const EdgeInsets.only(left: 30.0)),
                          ListCard,
                        ],
                      ),
                    )
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 30.0),
                    color: Colors.white,
                    child: new Column(
                      children: <Widget>[
                        new Padding(padding: const EdgeInsets.only(top: 20.0))
                        ,new Row(
                          children: <Widget>[
                            new Padding(padding: const EdgeInsets.only(left: 20.0)),
                            new Icon(Icons.face,color: Colors.blue,),
                            new Padding(padding: const EdgeInsets.only(left: 30.0)),
                            new Text("PERSONAL INFORMATION",style: new TextStyle(fontSize: 15.0),),
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 20.0)),
                        new Container(
                          width: 500.0,
                          height: 0.5,
                          color: Colors.grey[300],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 20.0)),
                        new Row(
                          children: <Widget>[
                            new Padding(padding: const EdgeInsets.only(left: 20.0)),
                            new Text("ABOUT ME"),
                            new Padding(padding: const EdgeInsets.only(left: 220.0)),
                            new Icon(Icons.navigate_next,color: Colors.grey,)
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 30.0)),
                        new Row(
                          children: <Widget>[
                            new Padding(padding: const EdgeInsets.only(left: 20.0)),
                            new Text("ADDITIONAL INFORMATION"),
                            new Padding(padding: const EdgeInsets.only(left: 110.0)),
                            new Icon(Icons.navigate_next,color: Colors.grey,)
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 30.0)),
                        new Row(
                          children: <Widget>[
                            new Padding(padding: const EdgeInsets.only(left: 20.0)),
                            new Text("MY FAMILY"),
                            new Padding(padding: const EdgeInsets.only(left: 220.0)),
                            new Icon(Icons.navigate_next,color: Colors.grey,)
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 30.0)),
                        new Row(
                          children: <Widget>[
                            new Padding(padding: const EdgeInsets.only(left: 20.0)),
                            new Text("MY PORTFOLIO"),
                            new Padding(padding: const EdgeInsets.only(left: 190.0)),
                            new Icon(Icons.navigate_next,color: Colors.grey,)
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 20.0))
                      ],
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}

final ListCard = new Container(
  width: 100.0,
  height: 150.0,
  decoration: new BoxDecoration(
    color: Colors.grey[200],
    borderRadius: new BorderRadius.circular(10.0),
  ),
  child: new Column(
    children: <Widget>[
      new Container(
        margin: const EdgeInsets.only(top: 20.0),
        width:25.0,
        height: 25.0,
        decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("images/sport-shoes.png")),
        ),
      ),
      new Padding(padding: const EdgeInsets.only(top: 10.0)),
      new Text("ACTIVITY"),
      new Padding(padding: const EdgeInsets.only(top: 20.0)),
      new Icon(Icons.send,color: Colors.grey[600],),
      new Text("Newbie"),
    ],
  ),
);