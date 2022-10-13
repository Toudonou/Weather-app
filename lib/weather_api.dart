// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_motion/weather.dart';
import 'package:day/day.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String location) async {
    var endpoint = Uri.parse(
        "https://api.weatherapi.com/v1/current.json?key=44f6b659a06c40a9ab4224157220710&q=$location&unit=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    return Weather.fromCurrent(body);
  }

  Future<Weather>? getPassWeather(String location, String date) async {
    var endpoint = Uri.parse(
        "https://api.weatherapi.com/v1/history.json?key=44f6b659a06c40a9ab4224157220710&q=$location&unit=metric&dt=$date");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);

    final now = Day();
    int hour = now.get("hour")!;

    if (hour == 0) {
      return Weather.fromHistory0(body);
    } else if (hour == 1) {
      return Weather.fromHistory1(body);
    } else if (hour == 2) {
      return Weather.fromHistory2(body);
    } else if (hour == 3) {
      return Weather.fromHistory3(body);
    } else if (hour == 4) {
      return Weather.fromHistory4(body);
    } else if (hour == 5) {
      return Weather.fromHistory5(body);
    } else if (hour == 6) {
      return Weather.fromHistory6(body);
    } else if (hour == 7) {
      return Weather.fromHistory7(body);
    } else if (hour == 8) {
      return Weather.fromHistory8(body);
    } else if (hour == 9) {
      return Weather.fromHistory9(body);
    } else if (hour == 10) {
      return Weather.fromHistory10(body);
    } else if (hour == 11) {
      return Weather.fromHistory11(body);
    } else if (hour == 12) {
      return Weather.fromHistory12(body);
    } else if (hour == 13) {
      return Weather.fromHistory13(body);
    } else if (hour == 14) {
      return Weather.fromHistory14(body);
    } else if (hour == 15) {
      return Weather.fromHistory15(body);
    } else if (hour == 16) {
      return Weather.fromHistory16(body);
    } else if (hour == 17) {
      return Weather.fromHistory17(body);
    } else if (hour == 18) {
      return Weather.fromHistory18(body);
    } else if (hour == 19) {
      return Weather.fromHistory19(body);
    } else if (hour == 20) {
      return Weather.fromHistory20(body);
    } else if (hour == 21) {
      return Weather.fromHistory21(body);
    } else if (hour == 22) {
      return Weather.fromHistory22(body);
    } else {
      return Weather.fromHistory23(body);
    }
  }

  Future<Weather>? getForecastWeather(String location, int index) async {
    var endpoint = Uri.parse(
      "https://api.weatherapi.com/v1/forecast.json?key=44f6b659a06c40a9ab4224157220710&q=$location&unit=metric&days=4",
    );

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);

    final now = Day();
    int hour = now.get("hour")!;

    if (index == 1 && hour == 0) {
      return Weather.fromForecast1_0(body);
    } else if (index == 1 && hour == 1) {
      return Weather.fromForecast1_1(body);
    } else if (index == 1 && hour == 2) {
      return Weather.fromForecast1_2(body);
    } else if (index == 1 && hour == 3) {
      return Weather.fromForecast1_3(body);
    } else if (index == 1 && hour == 4) {
      return Weather.fromForecast1_4(body);
    } else if (index == 1 && hour == 5) {
      return Weather.fromForecast1_5(body);
    } else if (index == 1 && hour == 6) {
      return Weather.fromForecast1_6(body);
    } else if (index == 1 && hour == 7) {
      return Weather.fromForecast1_7(body);
    } else if (index == 1 && hour == 8) {
      return Weather.fromForecast1_8(body);
    } else if (index == 1 && hour == 9) {
      return Weather.fromForecast1_9(body);
    } else if (index == 1 && hour == 10) {
      return Weather.fromForecast1_10(body);
    } else if (index == 1 && hour == 11) {
      return Weather.fromForecast1_11(body);
    } else if (index == 1 && hour == 12) {
      return Weather.fromForecast1_12(body);
    } else if (index == 1 && hour == 13) {
      return Weather.fromForecast1_13(body);
    } else if (index == 1 && hour == 14) {
      return Weather.fromForecast1_14(body);
    } else if (index == 1 && hour == 15) {
      return Weather.fromForecast1_15(body);
    } else if (index == 1 && hour == 16) {
      return Weather.fromForecast1_16(body);
    } else if (index == 1 && hour == 17) {
      return Weather.fromForecast1_17(body);
    } else if (index == 1 && hour == 18) {
      return Weather.fromForecast1_18(body);
    } else if (index == 1 && hour == 19) {
      return Weather.fromForecast1_19(body);
    } else if (index == 1 && hour == 20) {
      return Weather.fromForecast1_20(body);
    } else if (index == 1 && hour == 21) {
      return Weather.fromForecast1_21(body);
    } else if (index == 1 && hour == 22) {
      return Weather.fromForecast1_22(body);
    } else if (index == 1 && hour == 23) {
      return Weather.fromForecast1_23(body);
    } else if (index == 2 && hour == 0) {
      return Weather.fromForecast2_0(body);
    } else if (index == 2 && hour == 1) {
      return Weather.fromForecast2_1(body);
    } else if (index == 2 && hour == 2) {
      return Weather.fromForecast2_2(body);
    } else if (index == 2 && hour == 3) {
      return Weather.fromForecast2_3(body);
    } else if (index == 2 && hour == 4) {
      return Weather.fromForecast2_4(body);
    } else if (index == 2 && hour == 5) {
      return Weather.fromForecast2_5(body);
    } else if (index == 2 && hour == 6) {
      return Weather.fromForecast2_6(body);
    } else if (index == 2 && hour == 7) {
      return Weather.fromForecast2_7(body);
    } else if (index == 2 && hour == 8) {
      return Weather.fromForecast2_8(body);
    } else if (index == 2 && hour == 9) {
      return Weather.fromForecast2_9(body);
    } else if (index == 2 && hour == 10) {
      return Weather.fromForecast2_10(body);
    } else if (index == 2 && hour == 11) {
      return Weather.fromForecast2_11(body);
    } else if (index == 2 && hour == 12) {
      return Weather.fromForecast2_12(body);
    } else if (index == 2 && hour == 13) {
      return Weather.fromForecast2_13(body);
    } else if (index == 2 && hour == 14) {
      return Weather.fromForecast2_14(body);
    } else if (index == 2 && hour == 15) {
      return Weather.fromForecast2_15(body);
    } else if (index == 2 && hour == 16) {
      return Weather.fromForecast2_16(body);
    } else if (index == 2 && hour == 17) {
      return Weather.fromForecast2_17(body);
    } else if (index == 2 && hour == 18) {
      return Weather.fromForecast2_18(body);
    } else if (index == 2 && hour == 19) {
      return Weather.fromForecast2_19(body);
    } else if (index == 2 && hour == 20) {
      return Weather.fromForecast2_20(body);
    } else if (index == 2 && hour == 21) {
      return Weather.fromForecast2_21(body);
    } else if (index == 2 && hour == 22) {
      return Weather.fromForecast2_22(body);
    } else if (index == 2 && hour == 23) {
      return Weather.fromForecast2_23(body);
    } else if (index == 3 && hour == 0) {
      return Weather.fromForecast3_0(body);
    } else if (index == 3 && hour == 1) {
      return Weather.fromForecast3_1(body);
    } else if (index == 3 && hour == 2) {
      return Weather.fromForecast3_2(body);
    } else if (index == 3 && hour == 3) {
      return Weather.fromForecast3_3(body);
    } else if (index == 3 && hour == 4) {
      return Weather.fromForecast3_4(body);
    } else if (index == 3 && hour == 5) {
      return Weather.fromForecast3_5(body);
    } else if (index == 3 && hour == 6) {
      return Weather.fromForecast3_6(body);
    } else if (index == 3 && hour == 7) {
      return Weather.fromForecast3_7(body);
    } else if (index == 3 && hour == 8) {
      return Weather.fromForecast3_8(body);
    } else if (index == 3 && hour == 9) {
      return Weather.fromForecast3_9(body);
    } else if (index == 3 && hour == 10) {
      return Weather.fromForecast3_10(body);
    } else if (index == 3 && hour == 11) {
      return Weather.fromForecast3_11(body);
    } else if (index == 3 && hour == 12) {
      return Weather.fromForecast3_12(body);
    } else if (index == 3 && hour == 13) {
      return Weather.fromForecast3_13(body);
    } else if (index == 3 && hour == 14) {
      return Weather.fromForecast3_14(body);
    } else if (index == 3 && hour == 15) {
      return Weather.fromForecast3_15(body);
    } else if (index == 3 && hour == 16) {
      return Weather.fromForecast3_16(body);
    } else if (index == 3 && hour == 17) {
      return Weather.fromForecast3_17(body);
    } else if (index == 3 && hour == 18) {
      return Weather.fromForecast3_18(body);
    } else if (index == 3 && hour == 19) {
      return Weather.fromForecast3_19(body);
    } else if (index == 3 && hour == 20) {
      return Weather.fromForecast3_20(body);
    } else if (index == 3 && hour == 21) {
      return Weather.fromForecast3_21(body);
    } else if (index == 3 && hour == 22) {
      return Weather.fromForecast3_22(body);
    } else {
      return Weather.fromForecast3_23(body);
    }
  }
}
