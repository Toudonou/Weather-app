// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather_motion/components/favorite_screen/favorite_screen_card.dart';

class FavoriteScreenMany extends StatefulWidget {
  List<String> listFavorite;
  int id;
  double width;

  FavoriteScreenMany(
      {Key? key,
      required this.listFavorite,
      required this.id,
      required this.width})
      : super(key: key);

  @override
  State<FavoriteScreenMany> createState() => _FavoriteScreenManyState();
}

class _FavoriteScreenManyState extends State<FavoriteScreenMany> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: widget.listFavorite.length,
        itemBuilder: (BuildContext context, int index) {
          return FavoriteCard(
            name: widget.listFavorite[index],
            id: widget.id,
            width: widget.width,
            listFavoriteName: widget.listFavorite,
          );
        },
      ),
    );
  }
}
