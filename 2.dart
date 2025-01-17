import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          // backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: Text('data'),
            centerTitle: true,
            backgroundColor: Colors.teal.shade400,
          ),
          body: Center(
            child: Text(
              'data',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
          ))));
}
