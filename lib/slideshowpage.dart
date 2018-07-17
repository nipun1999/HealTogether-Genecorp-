import 'package:flutter/material.dart';
import 'package:heal_together/slideshow1.dart';
import 'package:heal_together/slideshow2.dart';
import 'package:heal_together/slideshow3.dart';
import 'package:heal_together/slideshow4.dart';
import 'package:heal_together/slideshow5.dart';
import 'package:heal_together/slideshow6.dart';

import 'package:circle_indicator/circle_indicator.dart';

class slideshowpage extends StatelessWidget {
  final PageController controller = new PageController();
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [slideshow1(),slideshow3(),slideshow2(),slideshow4(),slideshow5(),slideshow6()];
    return new Scaffold(
      body: new Stack(
        alignment: FractionalOffset.bottomCenter,
        children: <Widget>[
      new PageView.builder(
      itemCount: pages.length,
        controller: controller,
        itemBuilder: (BuildContext context,int index) => pages[index],
      ),
      new Container(
      margin: new EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
      ),
        child: new CircleIndicator(controller, pages.length,
            6.0, Colors.white70, Colors.white)
    ),
        ],
      )
    );
  }
}
