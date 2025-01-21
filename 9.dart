import 'package:flutter/material.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Building Layots'),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          body: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.airplay,
                color: Colors.red,
                size: 200,
              ),
              Positioned(
                  top: 60,
                  left: 50,
                  child: Text(
                    'tv',
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          )),
    );
  }
}
