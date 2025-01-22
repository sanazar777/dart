import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'wEATHER',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          iconTheme: IconThemeData(color: Colors.black54),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: _buildBoddy(),
      ),
    );
  }
}

Widget _buildBoddy() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
      image: NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAmccat3zT3nYHGdMG6Jn6626W_Q_nEA_dYA&s'));
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'TuesDay - May 22',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'howanyn yagdayy gar gatysykly yagysh yagyar sowuk howada oyunizde oturmaklygy teklip beryarin siz hem okunmersiniz sowuk howada oyunizde otursanyz',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '15 Clear',
                style: TextStyle(color: Colors.deepPurple),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Ahal, Ashgabat',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      )
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(
        9,
        (index) => Chip(
              label: Text(
                '${index + 20}C',
                style: TextStyle(fontSize: 15),
              ),
              avatar: Icon(
                Icons.cloud,
                color: Colors.blue.shade400,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  side: BorderSide(color: Colors.grey)),
              backgroundColor: Colors.grey.shade100,
            )),
  );
}

Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow[600],
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow[600],
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow[600],
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        size: 15,
        color: Colors.black,
      ),
    ],
  );
  return Row(
    children: [
      Text(
        'Info with openweathermap.org',
        style: TextStyle(fontSize: 15.0),
      ),
      stars,
    ],
  );
}
