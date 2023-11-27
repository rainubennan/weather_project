import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_project/model/demo.dart';

String api_key = '4936104033c2046d88415a66c94b5c10';
String api_head = 'https://api.openweathermap.org/data/2.5/weather';
String location = 'kollam';

class WeatherService {
  static Future<Climate> fetchClimateData() async {
    final response =
        await http.get(Uri.parse('$api_head?q=kollam&appid=$api_key'));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      // final climate = Climate.fromJson(jsonDecode(response.body));

      // climate.main.temp = climate.main.temp - 273.15;

      // return climate;
      print('Inside Api');
      print(json);
      print('Inside Api');
      return Climate.fromJson(json);
    } else {
      throw Exception('Failed to load climate data');
    }
  }
}
