import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weatherapp/services/location.dart';

String api_key = '5e4bcb42f5e634fcedf2bccaca74fb9c';

class WeatherData{

  String latitude;
  String longitude;

  WeatherData(this.latitude,this.longitude);

  Future<Map> getData() async{
    try{
      Response response = await get(Uri.parse('http://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&appid=${api_key}&units=metric'));
      Map data = jsonDecode(response.body);
      return data;
    }
    catch (e){
      print('Could not retrieve data : $e');
      return {};
    }
  }
}