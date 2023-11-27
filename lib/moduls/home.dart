import 'package:flutter/material.dart';

import 'package:weather_project/constant/colors.dart';

import 'package:weather_project/model/demo.dart';

import '../domain/service.dart';

class FirstPage extends StatefulWidget {
  FirstPage({this.climate});
  final climate;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {


  late final Climate fetchedData;

  Future<void> fetchClimate() async {
    final weatherFetch = await WeatherService.fetchClimateData();
    print(weatherFetch);
    setState(() {
      fetchedData = weatherFetch;
      print('Fetched Data : $fetchedData');
    });
  }

  @override
  void initState() {
    super.initState();
    print('Inside initstate');
  // fetchedData =fetchClimate(); 
    fetchClimate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.pinimg.com/736x/a6/3c/4c/a63c4c6300998453c6d938c7ab6f2077.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(30)),
                Text(
                  fetchedData.name,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  '${((fetchedData.main.temp - 32 * 5) / 9).toStringAsFixed(1)}°',
                  style: const TextStyle(color: Colors.white, fontSize: 70),
                ),
                Text(
                  fetchedData.timezone.toString(),
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'lon:${fetchedData.coord.lon}',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'lat:${fetchedData.coord.lat.toStringAsFixed(0)}',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    // Image(
                    //     image: NetworkImage(
                    //         'http://openweathermap.org/img/wn${fetchedData.weather.last}@4x.png'))
                  ],
                ),
                const Padding(padding: EdgeInsets.all(20)),
                Container(
                  // height: MediaQuery.of(context).size.height * .50,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                      color: WeatherColors.themeFive.withOpacity(.4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image(
                                  height:
                                      MediaQuery.of(context).size.height * .06,
                                  image: const AssetImage(
                                    'assets/images/minTemp.png',
                                  )),
                              Text(
                                'Min:${((fetchedData.main.tempMin - 32 * 5) / 9).toStringAsFixed(1)}°',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                  height:
                                      MediaQuery.of(context).size.height * .06,
                                  image: const AssetImage(
                                    'assets/images/maxTemp.png',
                                  )),
                              Text(
                                'Max:${((fetchedData.main.tempMax - 32 * 5) / 9).toStringAsFixed(1)}°',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      Column(
                        children: [
                          Image(
                              height: MediaQuery.of(context).size.height * .05,
                              image: const AssetImage(
                                'assets/images/humidity.png',
                              )),
                          Text(
                            'Humidity:${(fetchedData.main.humidity)}%',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      Column(
                        children: [
                          Image(
                              height: MediaQuery.of(context).size.height * .05,
                              image: const AssetImage(
                                'assets/images/pressure.png',
                              )),
                          Text(
                            'Pressure:${(fetchedData.main.pressure)} hPa',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      Column(
                        children: [
                          Image(
                              height: MediaQuery.of(context).size.height * .05,
                              image: const AssetImage(
                                'assets/images/wind.png',
                              )),
                          Text(
                            'Wind:${(fetchedData.wind.speed)} km/h',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                    ],
                  ),
                )
              ],
            )));
  }
}
