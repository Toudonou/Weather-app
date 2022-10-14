// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, must_be_immutable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_motion/constants.dart';
import 'package:weather_motion/weather.dart';
import 'package:weather_motion/weather_api.dart';
import 'package:day/day.dart';

class ListFavorite extends StatefulWidget {
  int id;
  List<String> listFavoriteName;

  ListFavorite({super.key, required this.id, required this.listFavoriteName});

  @override
  State<ListFavorite> createState() => _ListFavoriteState();
}

class _ListFavoriteState extends State<ListFavorite> {
  late TextEditingController _controller;
  int retour = 0;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (retour == 1) {
      Navigator.pop(context);
    }
    final size = MediaQuery.of(context).size;

    List<String> cardList = [
      "Porto-Novo",
      "Parakou",
      "Paris",
      "New-York",
    ];

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Color.fromARGB(125, 255, 255, 255),
            ),
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.white60),
            border: InputBorder.none,
          ),
          scrollPadding: EdgeInsets.all(20),
          style: TextStyle(color: Colors.white),
          onSubmitted: (entryText) {},
        ),
        elevation: 0.0,
        backgroundColor: bgColor,
      ),
      body: ListView.builder(
        primary: false,
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 10),
              ListCard(
                name: cardList[index],
                id: widget.id,
                height: 0.16 * size.height,
                width: 0.85 * size.width,
                borderRadius: 30,
                retour: retour,
                listFavoriteName: widget.listFavoriteName,
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}

class ListCard extends StatefulWidget {
  String name;
  int id;
  double height;
  double width;
  int borderRadius;
  int retour;
  List<String> listFavoriteName;

  ListCard({
    Key? key,
    required this.name,
    required this.id,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.retour,
    required this.listFavoriteName,
  }) : super(key: key);

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
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
    get();

    return Row(
      children: [
        SizedBox(width: 27),
        InkWell(
          onTap: () {
            if (widget.listFavoriteName.contains(widget.name) == false) {
              widget.listFavoriteName.add(WeatherLocation!.city!);
            }
            widget.retour = 1;
            setState(() {});
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
            child: WeatherLocation != null
                ? Row(
                    children: [
                      SizedBox(width: 0.14 * widget.height),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              WeatherLocation!.city!,
                              softWrap: false,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: appFont,
                                fontSize: 0.17 * widget.height,
                              ),
                            ),
                            Text(
                              "${WeatherLocation!.temp!}°",
                              softWrap: false,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Archivo",
                                fontSize: 0.64 * widget.height,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/images/day/${WeatherLocation!.image![-7 % WeatherLocation!.image!.length]}${WeatherLocation!.image![-6 % WeatherLocation!.image!.length]}${WeatherLocation!.image![-5 % WeatherLocation!.image!.length]}.png",
                        height: 0.71 * widget.height,
                        width: 0.71 * widget.height,
                      ),
                      SizedBox(width: 0.14 * widget.height),
                    ],
                  )
                : Center(child: CircularProgressIndicator()),
          ),
        ),
        SizedBox(width: 27),
      ],
    );
  }
}
