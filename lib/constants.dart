// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

Color bgColor = Color(0xFF000918);
String appFont = "Playfair";
double appMargin = 10;
List<Color> weather_gradient = AppGradients.oceanBlue;
List<Color> favorite_gradient = AppGradients.oceanBlue;

class AppGradients {
  static List<Color> oceanBlue = [Color(0xFF2e3192), Color(0xFF1BFFFF)];
  static List<Color> sanguine = [Color(0xFFD4145A), Color(0xFFFBB03B)];
  static List<Color> lusciousLime = [Color(0xFF009245), Color(0xFFFCEE21)];
  static List<Color> purpleLake = [Color(0xFF662D8C), Color(0xFFED1E79)];
  static List<Color> piglet = [Color(0xFFEE9CA7), Color(0xFFFFDDE1)];
  static List<Color> kashmir = [Color(0xFF614385), Color(0xFF516395)];
  static List<Color> greenBeach = [Color(0xFF02AABD), Color(0xFF00CDAC)];
  static List<Color> bloodyMary = [Color(0xFFFF512F), Color(0xFFDD2476)];
  static List<Color> sweetMorning = [Color(0xFFFF5F6D), Color(0xFFFFC371)];
  static List<Color> quepal = [Color(0xFF11998E), Color(0xFF38EF7D)];
  static List<Color> mountainRock = [Color(0xFF868F96), Color(0xFF596164)];

  static List<List<Color>> gradientsList = [
    oceanBlue,
    sanguine,
    lusciousLime,
    purpleLake,
    piglet,
    kashmir,
    greenBeach,
    bloodyMary,
    sweetMorning,
    quepal
  ];
}
