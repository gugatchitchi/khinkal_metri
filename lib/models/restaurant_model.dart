import 'package:flutter/material.dart';

class RestaurantModel {
  final String id;
  final String name;
  final String imgUrl;
  final Color color;

  RestaurantModel({
    @required this.id,
    @required this.name,
    @required this.imgUrl,
    @required this.color,
  });
}
