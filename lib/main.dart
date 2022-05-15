import 'package:flutter/material.dart';
import 'package:flutter_trip_ui/pages/detail_page.dart';
import 'package:flutter_trip_ui/pages/navpages/main_page.dart';

import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage()
    );
  }
}