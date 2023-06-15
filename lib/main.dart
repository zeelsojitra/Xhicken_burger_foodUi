import 'package:flutter/material.dart';
import 'package:xhicken_burger/page2.dart';
import 'package:xhicken_burger/stateful_demo.dart';

import 'detils_page.dart';
import 'home.dart';
import 'home2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
