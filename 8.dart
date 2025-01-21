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
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2023/12/06/21/07/photo-8434386_1280.jpg'),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.red,
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.green,
                child: Text('2'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.blue,
              child: Text('3'),
            ),
          ],
        ),
      ),
    );
  }
}
