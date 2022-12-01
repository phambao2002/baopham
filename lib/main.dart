import 'package:flutter/material.dart';
import 'home.dart';
import 'Star_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyApp(),
      home: StarScreen(),
    );
  }
}
