import 'package:flutter/material.dart';
import 'package:khinkal_metri/models/models.dart';

class RestaurantPageModel {
  final RestaurantModel restaurant;
  final Color color;
  final String category;

  RestaurantPageModel({
    @required this.restaurant,
    @required this.color,
    @required this.category,
  });
}
