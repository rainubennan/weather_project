// // import 'dart:async';

// // import 'package:flutter/material.dart';

// // class Splash extends StatefulWidget {
// //   const Splash({Key? key}) : super(key: key);

// //   @override
// //   // ignore: library_private_types_in_public_api
// //   _SplashState createState() => _SplashState();
// // }

// // class _SplashState extends State<Splash> {
// //   @override
// //   void initState() {
// //     super.initState();
// //     Timer(const Duration(milliseconds: 100), () {
// //       // Navigator.of(context).pushReplacement(
// //       //     MaterialPageRoute(builder: (context) => const Home()));
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         color: Colors.white,
// //         child: const Text(
// //           'RainCheck',
// //           style: TextStyle(color: Colors.black),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:weather_project/model/climate_model.dart';


// class ClimateScreen extends StatefulWidget {
//   @override
//   _ClimateScreenState createState() => _ClimateScreenState();
// }

// class _ClimateScreenState extends State<ClimateScreen> {

  
//   // Future<Climate> fetchClimateData() async {
//   //   final response = await http.get(Uri.parse(
//   //       'https://api.openweathermap.org/data/2.5/weather?q=kerala&appid=4936104033c2046d88415a66c94b5c10'));

//   //   if (response.statusCode == 200) {
//   //     // If the server returns a 200 OK response, parse the JSON
//   //     final climate = Climate.fromJson(jsonDecode(response.body));

//   //     // Convert temperature from Kelvin to Celsius
//   //     climate.main.temp = climate.main.temp - 273.15;

//   //     return climate;
//   //   } else {
//   //     // If the server did not return a 200 OK response,
//   //     // throw an exception.
//   //     throw Exception('Failed to load climate data');
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Climate Data'),
//       ),
//       body: Center(
//         child: FutureBuilder<Climate>(
//           future: fetchClimateData(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               final climate = snapshot.data!;
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('City: ${climate.name}'),
//                   Text('Temperature: ${climate.main.temp}°C'),
//                   Text('Weather: ${climate.weather[0].main}'),
//                 ],
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
