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
          title: Text('data'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage('assets/images/2.jpg'),
              ),
              Image.asset('assets/icons/1.png'),
              Positioned(
                  top: 16,
                  left: 125,
                  child: Text(
                    'data',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Tangerine',
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
