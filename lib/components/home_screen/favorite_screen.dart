// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, depend_on_referenced_packages, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather_motion/components/favorite_screen/favorite_screen_many.dart';
import 'package:weather_motion/constants.dart';

class FavoriteScreen extends StatefulWidget {
  List<String> listFavoriteName;
  int id;

  FavoriteScreen({Key? key, required this.listFavoriteName, required this.id})
      : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return widget.listFavoriteName.isEmpty
        ? Container(
            padding: EdgeInsets.all(0),
            width: 0.944 * size.width,
            height: 0.331 * size.height,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 136, 132, 132).withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Your fovorite cities will appear here",
                style: TextStyle(
                  fontFamily: appFont,
                  color: Colors.white,
                  fontSize: 0.050 * size.width,
                ),
              ),
            ),
          )
        : widget.listFavoriteName.length == 1
            ? FavoriteScreenMany(
                listFavorite: widget.listFavoriteName,
                id: widget.id,
                width: size.width - appMargin * 2,
              )
            : FavoriteScreenMany(
                listFavorite: widget.listFavoriteName,
                id: widget.id,
                width: size.width / 2,
              );
  }
}
