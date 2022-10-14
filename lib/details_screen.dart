// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, depend_on_referenced_packages, must_be_immutable
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_motion/components/details_screen/weather_details.dart';
import 'package:weather_motion/weather.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:date_format/date_format.dart';

class DetailsScreen extends StatefulWidget {
  Weather weather;

  DetailsScreen({Key? key, required this.weather}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 30), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    for (var i in daysList) {
      if (i == formatDate(DateTime.now(), [DD])) {
        indexCurrentDay = daysList.indexOf(i);
        break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          WeatherDetails(weather: widget.weather),
          Expanded(
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 6,
                minY: 20,
                maxY: 29,
                gridData: FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: ((value, meta) {
                        return Text(
                          daysList[(indexCurrentDay - 3 + value.toInt()) % 7]
                                  [0] +
                              daysList[(indexCurrentDay - 3 + value.toInt()) %
                                  7][1] +
                              daysList[
                                  (indexCurrentDay - 3 + value.toInt()) % 7][2],
                          style: TextStyle(
                            color: (value - 3) <= 0
                                ? Colors.white.withOpacity(1 + (value - 3) / 4)
                                : Colors.white.withOpacity(1 - (value - 3) / 4),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 100, 100, 99),
                        Colors.white,
                        Color.fromARGB(255, 100, 100, 99),
                      ],
                    ),
                    spots: [
                      FlSpot(0, 23.5),
                      FlSpot(1, 25.5),
                      FlSpot(2, 22),
                      FlSpot(3, 27),
                      FlSpot(4, 25.5),
                      FlSpot(5, 25),
                      FlSpot(6, 25.5),
                    ],
                  )
                ],
              ),
              swapAnimationDuration: Duration(milliseconds: 150),
              swapAnimationCurve: Curves.linear,
            ),
          ),
        ],
      ),
    );
  }
}
