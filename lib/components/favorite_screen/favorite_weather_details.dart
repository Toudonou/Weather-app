// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, depend_on_referenced_packages, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:weather_motion/components/delayed_animation.dart';
import 'package:weather_motion/constants.dart';
import 'package:weather_motion/weather.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WeatherFavoriteDetails extends StatefulWidget {
  List<String> listFavorteName;
  Weather weather;

  WeatherFavoriteDetails(
      {Key? key, required this.weather, required this.listFavorteName})
      : super(key: key);

  @override
  State<WeatherFavoriteDetails> createState() => _WeatherFavoriteDetailsState();
}

class _WeatherFavoriteDetailsState extends State<WeatherFavoriteDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appMargin),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(55),
            bottomRight: Radius.circular(55),
          ),
          gradient: LinearGradient(
            colors: weather_gradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        width: double.infinity,
        height: 0.75 * size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Hero(
                      tag: "favoriteLocationTempHeroTag${widget.weather.city}",
                      child: Text(
                        widget.weather.city!,
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: appFont,
                          fontSize: 0.17 * size.width / 2,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      widget.listFavorteName.remove(widget.weather.city!);
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.delete, color: Colors.red))
              ],
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Hero(
                  tag: "favoriteLocationImageHeroTag${widget.weather.city!}",
                  child: Image.asset(
                    "assets/images/day/${widget.weather.image![-7 % widget.weather.image!.length]}${widget.weather.image![-6 % widget.weather.image!.length]}${widget.weather.image![-5 % widget.weather.image!.length]}.png",
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      widget.weather.text!,
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "Archivo",
                        fontSize: 0.034 * 0.75 * size.height,
                      ),
                      speed: const Duration(milliseconds: 75),
                      cursor: " ",
                    ),
                  ],
                  totalRepeatCount: 1,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: false,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DelayedAnimation(
                      delayed: 1000,
                      child: Text(
                        "Wind Speed",
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Archivo",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    DelayedAnimation(
                      delayed: 1100,
                      child: Text(
                        "${widget.weather.wind_speed!} km/h",
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Archivo",
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DelayedAnimation(
                      delayed: 1200,
                      child: Text(
                        "Humidity        ",
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Archivo",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    DelayedAnimation(
                      delayed: 1300,
                      child: Text(
                        "${widget.weather.humidity!}%            ",
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Archivo",
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DelayedAnimation(
                      delayed: 1400,
                      child: Text(
                        "UV   ",
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Archivo",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    DelayedAnimation(
                      delayed: 1500,
                      child: Text(
                        "${widget.weather.uv!}",
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Archivo",
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Ink(
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 70),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Some cities",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
