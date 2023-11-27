import 'package:flutter/material.dart';
import 'package:weather_project/constant/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/a6/3c/4c/a63c4c6300998453c6d938c7ab6f2077.jpg'),
                  fit: BoxFit.cover)),
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: WeatherColors.themeOne.withOpacity(.5),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                    child: TextFormField(
                      controller: searchcontroller,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: WeatherColors.themeFour,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 3, color: WeatherColors.themeFour))),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .87,
                    decoration: BoxDecoration(
                        color: WeatherColors.themeFive.withOpacity(.4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          Text(
                            '19°',
                            style: TextStyle(color: Colors.white, fontSize: 70),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          Text(
                            'Tamil Nadu',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                        // Icon
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
