import 'package:flutter/material.dart';
import 'package:weatherapp/pages/loading_screen.dart';
import 'package:weatherapp/pages/location_screen.dart';
import 'package:weatherapp/pages/weather_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) => Loading(),
        '/weather' : (context) => WeatherHome(),
        // '/location' : (context) => ChooseLocation(),
      },
    );
  }
}
