import 'package:flutter/material.dart';
import 'package:ngdemo3/pages/drawer_page.dart';
import 'package:ngdemo3/pages/gridview_page.dart';
import 'package:ngdemo3/pages/home_page.dart';
import 'package:ngdemo3/pages/scrolview_page.dart';
import 'package:ngdemo3/pages/tabbarview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:  TapBarView(),
    );
  }
}

