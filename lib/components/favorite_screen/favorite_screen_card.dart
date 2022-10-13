// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_motion/components/favorite_screen/favorite_details_screen.dart';
import 'package:weather_motion/constants.dart';
import 'package:weather_motion/weather.dart';
import 'package:weather_motion/weather_api.dart';
import 'package:day/day.dart';

class FavoriteCard extends StatefulWidget {
  String name;
  int id;
  double width;
  FavoriteCard(
      {Key? key, required this.name, required this.id, required this.width})
      : super(key: key);

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  WeatherApiClient currentLocation = WeatherApiClient();
  Weather? WeatherLocation;
  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {});
    });

    super.initState();
  }

  Future<void> get() async {
    if (widget.id == 0) {
      WeatherLocation = await currentLocation.getCurrentWeather(widget.name);
    } else if (widget.id < 0) {
      final now = Day();
      String now_string = now.add(widget.id, "date").toString();
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
      WeatherLocation = await currentLocation.getPassWeather(widget.name, date);
    } else {
      WeatherLocation =
          await currentLocation.getForecastWeather(widget.name, widget.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    get();
    return WeatherLocation != null
        ? Row(
            children: [
              SizedBox(width: appMargin),
              InkWell(
                onTap: () {
                  Navigator.push(context, PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                    final curveAnimation = CurvedAnimation(
                        parent: animation, curve: Interval(0, 0.5));

                    return FadeTransition(
                      opacity: curveAnimation,
                      child: FavoriteDetailsScreen(
                        weather: Weather(
                          city: WeatherLocation!.city,
                          temp: WeatherLocation!.temp,
                          image: WeatherLocation!.image,
                          text: WeatherLocation!.text,
                          wind_speed: WeatherLocation!.wind_speed,
                          humidity: WeatherLocation!.humidity,
                          uv: WeatherLocation!.uv,
                          is_day: WeatherLocation!.is_day,
                        ),
                      ),
                    );
                  }));
                },
                borderRadius: BorderRadius.circular(15),
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: AppGradients.mountainRock,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  height: 0.359 * size.height,
                  width: widget.width,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(tag:"favoriteLocationCityHeroTag${WeatherLocation!.city}",
                          child: Text(
                            WeatherLocation!.city!,
                            softWrap: false,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: appFont,
                              fontSize: 0.17 * size.width / 2,
                            ),
                          ),
                        ),
                        Hero(tag:"favoriteLocationTempHeroTag${WeatherLocation!.city}",
                          child: Text(
                            "${WeatherLocation!.temp!}°",
                            softWrap: false,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Archivo",
                              fontSize: 0.54 * size.width / 2,
                            ),
                          ),
                        ),
                        Hero(
                          tag:
                              "favoriteLocationImageHeroTag${WeatherLocation!.city}",
                          child: Image.asset(
                            "assets/images/day/${WeatherLocation!.image![-7 % WeatherLocation!.image!.length]}${WeatherLocation!.image![-6 % WeatherLocation!.image!.length]}${WeatherLocation!.image![-5 % WeatherLocation!.image!.length]}.png",
                            height: 0.51 * size.width / 2,
                            width: 0.51 * size.width / 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: AppGradients.mountainRock,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            height: 0.359 * size.height,
            width: size.width / 2,
            child: Center(child: CircularProgressIndicator()),
          );
  }
}
