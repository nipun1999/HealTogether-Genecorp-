import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:heal_together/Login.dart';
import 'package:heal_together/termsconditions.dart';
import 'package:heal_together/loginmain.dart';
import 'package:heal_together/slideshowpage.dart';
import 'package:heal_together/slideshow2.dart';
import 'package:heal_together/profile.dart';
import 'profilepage.dart';
import 'addcancer.dart';
import 'journal.dart';
import 'calender.dart';
import 'discover.dart';
import 'lifestylemain.dart';


void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new lifestylemain(),
      theme: new ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.pink,
          brightness: Brightness.light,
        fontFamily: "century"
      ),
      debugShowCheckedModeBanner: false,
    );

  }
}
