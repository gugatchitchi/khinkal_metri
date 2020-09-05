import 'package:flutter/material.dart';

class RestaurantModel {
  final String id;
  final String name;
  final String imgUrl;
  final bool khinkaliRestaurant;
  final bool shaurmaRestaurant;
  final bool burgerRestaurant;

  RestaurantModel({
    @required this.id,
    @required this.name,
    @required this.imgUrl,
    this.khinkaliRestaurant = false,
    this.shaurmaRestaurant = false,
    this.burgerRestaurant = false,
  });
}
