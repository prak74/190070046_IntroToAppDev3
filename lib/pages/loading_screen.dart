import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherapp/services/location.dart';
import 'package:weatherapp/services/networking.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Map data_map = {};

  void getData() async{
    LocationParams location = new LocationParams();
    await location.getLocation();
    WeatherData data = WeatherData(location.latitude, location.longitude);
    data_map = await data.getData();
    Navigator.pushReplacementNamed(context, '/weather', arguments: data_map);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SpinKitWave(
        color: Colors.white
      ),
    );
  }
}
