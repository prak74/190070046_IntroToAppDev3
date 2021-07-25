import 'package:flutter/material.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {

  Map data_map = {};

  @override
  Widget build(BuildContext context) {

    data_map = (ModalRoute.of(context)!.settings.arguments) as Map;
    print(data_map);

    return Scaffold(
      appBar: AppBar(
        title: Text('${data_map['name']}, ${data_map['sys']['country']}'),
      ),
    );
  }
}
