import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('My first Page'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(value: 20,),
            Text('23 %', style: TextStyle(color: Colors.white, fontSize: 23),),
            Text('Pres button to download', style: TextStyle(color: Colors.white, fontSize: 20),),
          ],
        ),),
        ),
        floatingActionButton: FloatingActionButton(onPressed: null, 
        child: Icon(Icons.cloud_download),),
),
    );
  }
}
