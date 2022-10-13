// ignore_for_file: prefer_const_constructors_in_immutables, depend_on_referenced_packages, prefer_const_constructors, must_be_immutable

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_motion/constants.dart';
import 'package:date_format/date_format.dart';

class HeaderHomeScreen extends StatefulWidget {
  String dayMoment;
  HeaderHomeScreen({Key? key, required this.dayMoment}) : super(key: key);

  @override
  State<HeaderHomeScreen> createState() => _HeaderHomeScreenState();
}

class _HeaderHomeScreenState extends State<HeaderHomeScreen> {
  int emojiIndex = 0;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 10), ((timer) {
      setState(() {});
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    emojiIndex += 1;
    emojiIndex = emojiIndex % 20;
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(width: appMargin),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good",
              style: TextStyle(
                fontFamily: appFont,
                color: Colors.white,
                fontSize: 0.083 * size.width,
              ),
            ),
            Text(
              widget.dayMoment,
              style: TextStyle(
                fontFamily: appFont,
                color: Colors.white,
                fontSize: 0.083 * size.width,
              ),
            ),
            Text(
              formatDate(DateTime.now(), [DD, ', ', dd, ' ', MM]),
              style: TextStyle(
                fontFamily: appFont,
                fontSize: 0.041 * size.width,
                color: Colors.white70,
              ),
            )
          ],
        ),
        Spacer(),
        Image.asset(
          "assets/images/$emojiIndex.png",
          width: 0.33 * min(size.width, size.height),
          height: 0.33 * min(size.width, size.height),
        ),
      ],
    );
  }
}
