import 'package:flutter/material.dart';

import 'Detail_Page.dart';
import 'Home_Page.dart';
import 'Medicines_Page.dart';
import 'listview_demo.dart';
import 'listviewdemo2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewDemo2(),
    );
  }
}
