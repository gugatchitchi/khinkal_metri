import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/widgets/stars_ratings.dart';

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
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Name and date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Palette.font,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Palette.font,
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
              // Rating
              StarsRatings(
                rating: rating.toDouble(),
                fontSize: 12,
                isComment: true,
              )
            ],
          ),

          // Comment
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    comment,
                    style: TextStyle(
                      color: Palette.font,
                      fontSize: 12.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
