// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather_motion/constants.dart';
import 'package:weather_motion/details_screen.dart';
import 'package:weather_motion/weather.dart';

class WeatherDisplay extends StatefulWidget {
  Weather weather;
  double height;
  double width;
  int borderRadius;
  WeatherDisplay({
    Key? key,
    required this.weather,
    required this.height,
    required this.width,
    required this.borderRadius,
  }) : super(key: key);

  @override
  State<WeatherDisplay> createState() => _WeatherDisplayState();
}

class _WeatherDisplayState extends State<WeatherDisplay> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: appMargin),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      final curveAnimation = CurvedAnimation(
                          parent: animation, curve: Interval(0, 0.5));

                      return FadeTransition(
                        opacity: curveAnimation,
                        child: DetailsScreen(weather: widget.weather),
                      );
                    }));
          },
          borderRadius: BorderRadius.circular(widget.borderRadius.toDouble()),
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius:
                  BorderRadius.circular(widget.borderRadius.toDouble()),
              gradient: LinearGradient(
                colors: weather_gradient,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            height: widget.height,
            width: widget.width,
            child: Row(
              children: [
                SizedBox(width: 0.14 * widget.height),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: "currentLocationCityHeroTag",
                        child: Text(
                          widget.weather.city!,
                          softWrap: false,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: appFont,
                            fontSize: 0.17 * widget.height,
                          ),
                        ),
                      ),
                      Hero(tag: "currentLocationTempHeroTag",
                        child: Text(
                          "${widget.weather.temp!}°",
                          softWrap: false,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Archivo",
                            fontSize: 0.64 * widget.height,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Hero(
                  tag: "currentLocationImageHeroTag",
                  child: Image.asset(
                    "assets/images/day/${widget.weather.image![-7 % widget.weather.image!.length]}${widget.weather.image![-6 % widget.weather.image!.length]}${widget.weather.image![-5 % widget.weather.image!.length]}.png",
                    height: 0.71 * widget.height,
                    width: 0.71 * widget.height,
                  ),
                ),
                SizedBox(width: 0.14 * widget.height),
              ],
            ),
          ),
        ),
        SizedBox(width: appMargin),
      ],
    );
  }
}
