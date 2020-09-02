import 'package:flutter/material.dart';

class RatingModel {
  final String ownerId;
  final String ownerName;
  final String restaurantId;
  final int rating;
  final String comment;
  final String date;
  final String type;

  RatingModel({
    @required this.ownerId,
    @required this.ownerName,
    @required this.restaurantId,
    @required this.rating,
    @required this.comment,
    @required this.date,
    @required this.type,
  });
}
