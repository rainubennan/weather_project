import 'package:flutter/material.dart';
import 'package:weather_project/constant/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WeatherColors.themeThree.withOpacity(1),
        body: Center(
          child: Column(
            children: [
              const Padding(
                // padding: const EdgeInsets.symmetric(vertical: 100),
                padding: EdgeInsets.only(top: 100),
                child: CircleAvatar(
                  maxRadius: 75,
                  backgroundColor: WeatherColors.themeTwo,
                  child: Icon(
                    Icons.account_circle,
                    size: 150,
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  'Rainu Bennan',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    Text('Current Loaction'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: WeatherColors.themeTwo),
                child: const Text('Log Out'),
              )
            ],
          ),
        ));
  }
}
