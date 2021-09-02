

import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  String value;
  ScreenTwo({required this.value});


  @override
  _ScreenTwoState createState() => _ScreenTwoState(value);
}

class _ScreenTwoState extends State<ScreenTwo> {
  String value;
  _ScreenTwoState(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenTwo'),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}

