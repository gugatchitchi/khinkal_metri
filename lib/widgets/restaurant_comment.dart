import 'package:flutter/material.dart';

class RestaurantComment extends StatelessWidget {
  final String name;
  final int rating;
  final String date;
  final String comment;
  final Color color;

  const RestaurantComment({
    Key key,
    @required this.name,
    @required this.rating,
    @required this.date,
    @required this.comment,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Text('Comment'),
    );
  }
}
