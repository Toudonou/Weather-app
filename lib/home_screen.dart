// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, depend_on_referenced_packages, avoid_print, non_constant_identifier_names, must_be_immutable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weather_motion/components/home_screen/favorite_screen.dart';
import 'package:weather_motion/components/home_screen/header.dart';
import 'package:weather_motion/components/home_screen/search.dart';
import 'package:weather_motion/components/home_screen/weather_display.dart';
import 'package:weather_motion/weather_api.dart';
import 'package:weather_motion/constants.dart';
import 'package:weather_motion/weather.dart';
import 'package:day/day.dart';
import 'package:date_format/date_format.dart';

int globalDayId = 0;

class HomeScreen extends StatefulWidget {
  List<String> listFavoriteName;
  HomeScreen({Key? key, required this.listFavoriteName}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherApiClient currentLocation = WeatherApiClient();
  Weather? WeatherLocation;
  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {});
    });
    globalDayId = 0;

    super.initState();
  }

  Future<void> get() async {
    if (globalDayId == 0) {
      WeatherLocation = await currentLocation.getCurrentWeather("Porto-Novo");
    } else if (globalDayId < 0) {
      final now = Day();
      String now_string = now.add(globalDayId, "date").toString();
      String date = now_string[0] +
          now_string[1] +
          now_string[2] +
          now_string[3] +
          now_string[4] +
          now_string[5] +
          now_string[6] +
          now_string[7] +
          now_string[8] +
          now_string[9];
      WeatherLocation =
          await currentLocation.getPassWeather("Porto-Novo", date);
    } else {
      WeatherLocation =
          await currentLocation.getForecastWeather("Porto-Novo", globalDayId);
    }
  }

  @override
  Widget build(BuildContext context) {
    get();
    final size = MediaQuery.of(context).size;
    int indexCurrentDay = 0;
    List<String> daysList = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday",
    ];

    for (var i in daysList) {
      if (i == formatDate(DateTime.now(), [DD])) {
        indexCurrentDay = daysList.indexOf(i);
        break;
      }
    }
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderHomeScreen(dayMoment: "Afternoon"),
            SizedBox(height: 0.019 * size.height),
            Search(),
            SizedBox(height: 0.038 * size.height),
            WeatherLocation != null
                ? WeatherDisplay(
                    weather: Weather(
                        city: WeatherLocation!.city,
                        temp: WeatherLocation!.temp,
                        image: WeatherLocation!.image,
                        text: WeatherLocation!.text,
                        wind_speed: WeatherLocation!.wind_speed,
                        humidity: WeatherLocation!.humidity,
                        uv: WeatherLocation!.uv,
                        is_day: WeatherLocation!.is_day),
                    height: 0.1785 * size.height,
                    width: 0.944 * size.width,
                    borderRadius: 15,
                  )
                : Row(
                    children: [
                      SizedBox(width: appMargin),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 0.1785 * size.height,
                        width: 0.944 * size.width,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      SizedBox(width: appMargin),
                    ],
                  ),
            SizedBox(height: 0.019 * size.height),
            Row(
              children: [
                SizedBox(width: appMargin),
                DaySelector(
                    dayName: daysList[(indexCurrentDay - 3) % 7], id: -3),
                DaySelector(
                    dayName: daysList[(indexCurrentDay - 2) % 7], id: -2),
                DaySelector(
                    dayName: daysList[(indexCurrentDay - 1) % 7], id: -1),
                DaySelector(
                    dayName: daysList[(indexCurrentDay - 0) % 7], id: 0),
                DaySelector(
                    dayName: daysList[(indexCurrentDay + 1) % 7], id: 1),
                DaySelector(
                    dayName: daysList[(indexCurrentDay + 2) % 7], id: 2),
                DaySelector(
                    dayName: daysList[(indexCurrentDay + 3) % 7], id: 3),
                SizedBox(width: appMargin),
              ],
            ),
            SizedBox(height: 0.039 * size.height),
            Row(
              children: [
                SizedBox(width: appMargin),
                Text(
                  "Favorite Location",
                  style: TextStyle(
                    fontFamily: appFont,
                    color: Colors.white,
                    fontSize: 0.083 * size.width,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            FavoriteScreen(
              listFavoriteName: widget.listFavoriteName,
              id: globalDayId,
            ),
          ],
        ));
  }
}

class DaySelector extends StatelessWidget {
  final String dayName;
  final int id;
  const DaySelector({Key? key, required this.dayName, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        globalDayId = id;
      },
      child: Container(
        height: 0.038 * size.height,
        width: 0.134 * size.width,
        decoration: BoxDecoration(
          color: globalDayId == id ? Colors.blue : bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            dayName[0] + dayName[1] + dayName[2],
            softWrap: false,
            style: TextStyle(
              color: globalDayId == id
                  ? Colors.white
                  : Color.fromARGB(255, 150, 141, 141),
            ),
          ),
        ),
      ),
    );
  }
}
