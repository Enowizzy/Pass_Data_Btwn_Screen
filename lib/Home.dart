//import 'dart:html';

import 'package:flutter/material.dart';
import 'ScreenTwo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   late String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PassData'),
       backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text){
            value = text;
            },
          ),
         ElevatedButton(
             onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTwo(value: value,)));
         },
         child: Text('PassHere'),
         )

        ],
      ),
    );
  }
}
