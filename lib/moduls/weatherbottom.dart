import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:weather_project/constant/colors.dart';

import 'package:weather_project/moduls/profile.dart';

import 'home.dart';
import 'searchPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // late Climate _climateData;

  // void getLocation() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.low);
  //   // ignore: avoid_print
  //   print(position);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchedData();
  // }

  // Future<void> fetchedData() async {
  //   try {
  //     dynamic fetchedWeather = await WeatherService.fetchClimateData();
  //     setState(() {
  //       _climateData = fetchedWeather;
  //     });
  //   } catch (error) {
  //     print('Error:$error');
  //   }
  // }

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  var bodyPart = [
    SearchPage(),
    FirstPage(),
    Profile(),
  ];
  int _page = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WeatherColors.themeThree.withOpacity(1),
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.easeIn,
          key: _bottomNavigationKey,
          color: WeatherColors.themeThree,
          buttonBackgroundColor: WeatherColors.themeFour,
          backgroundColor: WeatherColors.themeFive.withOpacity(.8),
          items: const [
            Icon(
              Icons.search,
              size: 30,
              color: WeatherColors.themeTwo,
            ),
            Icon(
              Icons.add,
              size: 30,
              color: WeatherColors.themeTwo,
            ),
            Icon(
              Icons.account_circle,
              size: 30,
              color: WeatherColors.themeTwo,
            ),
          ],
          index: 1,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: bodyPart.elementAt(_page));
  }
}
