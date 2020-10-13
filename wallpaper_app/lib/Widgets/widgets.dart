import 'package:flutter/material.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'XY',
        style: TextStyle(color: Colors.black),
      ),
      Text('Z', style: TextStyle(color: Colors.blue))
    ],
  );
}
