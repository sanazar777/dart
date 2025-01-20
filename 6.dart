import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building layouts'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.green, border: Border.all()),
          height: 100,
          width: 100,
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          child: Text('Hello Flutter '),
        ),
      ),
    );
  }
}
