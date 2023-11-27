import 'package:flutter/material.dart';
import 'package:weather_project/model/demo.dart';
import 'package:weather_project/moduls/home.dart';
import 'package:weather_project/moduls/weatherbottom.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late Climate _climate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _climate != null
            ? FirstPage(climate: _climate,)
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
