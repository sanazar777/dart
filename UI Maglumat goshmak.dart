import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shop',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyWid(),
      debugShowCheckedModeBanner: true,
    );
  }
}

class MyWid extends StatefulWidget {
  const MyWid({super.key});

  @override
  State<MyWid> createState() => _MyWidState();
}

class _MyWidState extends State<MyWid> {
  List<Map<String, String>> product = [
    {'name': 'Sanazar', 'price': '1700 TMT'},
    {'name': 'LAptop', 'price': '1900 TMT'},
  ];
  void addProduct() {
    setState(() {
      product.add({'name': 'Okje', 'price': '3700 TMT'});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Shop'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: addProduct, child: Text('addProduct')),
          Expanded(
              child: ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    final product1 = product[index];
                    return Card(
                      child: ListTile(
                        title: Text('${product1['name']}'),
                        subtitle: Text('${product1['price']}'),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
