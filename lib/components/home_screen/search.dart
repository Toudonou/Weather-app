// ignore_for_file: prefer_const_constructors_in_immutables, depend_on_referenced_packages, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:weather_motion/constants.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: appMargin),
      height: 40,
      width: size.width * 0.94,
      decoration: BoxDecoration(
        color: Color.fromARGB(24, 255, 255, 255),
        border: Border.all(
          color: Color.fromARGB(24, 255, 255, 255),
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextField(
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
        onSubmitted: (entryText) {
          print(entryText);
        },
      ),
    );
  }
}
