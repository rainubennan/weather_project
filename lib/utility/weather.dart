// import 'package:weather/utility/location.dart';
// import 'package:weather/utility/network.dart';

// const apikey = '4936104033c2046d88415a66c94b5c10';
// const weatherMapUrl =
//     'https://api.openweathermap.org/data/2.5/weather?q=kerala&appid=';

// class WeatherModel {
//   /// city name
//   Future<dynamic> getCityName(String cityName) async {
//     NetworkHelper networkHelper =
//         NetworkHelper('$weatherMapUrl?q=$cityName&appid=$apikey');
//     var weatherData = await networkHelper.getData();
//     return weatherData;
//   }

//   /// location
//   Future<dynamic> getLocation() async {
//     WeatherLocation location = WeatherLocation();
//     await location.getLocation();
//     NetworkHelper networkHelper = NetworkHelper(
//         '$weatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey&units=metric');
//     var weatherData = await networkHelper.getData();
//     return weatherData;
//   }
// }
