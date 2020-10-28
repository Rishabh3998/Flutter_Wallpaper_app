import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TeNeT',
      theme: ThemeData(
        primaryColor: Colors.teal[400],
      ),
      home: Home(),
    );
  }
}
