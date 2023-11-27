// import 'package:weather_project/model/coords_model.dart';

// import 'clouds_model.dart';
// import 'main_model.dart';
// import 'sys_model.dart';
// import 'weather_model.dart';
// import 'wind_model.dart';

// class Climate {
//   Coord coord;
//   List<Weather> weather;
//   String base;
//   Main main;
//   int visibility;
//   Wind wind;
//   Clouds clouds;
//   int dt;
//   Sys sys;
//   int timezone;
//   int id;
//   String name;
//   int cod;

//   Climate({
//     required this.coord,
//     required this.weather,
//     required this.base,
//     required this.main,
//     required this.visibility,
//     required this.wind,
//     required this.clouds,
//     required this.dt,
//     required this.sys,
//     required this.timezone,
//     required this.id,
//     required this.name,
//     required this.cod,
//   });

//   factory Climate.fromJson(Map<String, dynamic> json) => Climate(
//         coord: Coord.fromJson(json["coord"]),
//         weather:
//             List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
//         base: json["base"],
//         main: Main.fromJson(json["main"]),
//         visibility: json["visibility"],
//         wind: Wind.fromJson(json["wind"]),
//         clouds: Clouds.fromJson(json["clouds"]),
//         dt: json["dt"],
//         sys: Sys.fromJson(json["sys"]),
//         timezone: json["timezone"],
//         id: json["id"],
//         name: json["name"],
//         cod: json["cod"],
//       );

//   Map<String, dynamic> toJson() => {
//         "coord": coord.toJson(),
//         "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
//         "base": base,
//         "main": main.toJson(),
//         "visibility": visibility,
//         "wind": wind.toJson(),
//         "clouds": clouds.toJson(),
//         "dt": dt,
//         "sys": sys.toJson(),
//         "timezone": timezone,
//         "id": id,
//         "name": name,
//         "cod": cod,
//       };
// }
