import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building layouts'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.indigo[100],
          ),
          child: Row(
            //Column goyup barlap gormeli
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.adjust,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.adjust,
                size: 300,
                color: Colors.red,
              ),
              Icon(
                Icons.adjust,
                size: 50,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
