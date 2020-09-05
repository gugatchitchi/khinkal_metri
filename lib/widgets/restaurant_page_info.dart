import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class RestaurantPageInfo extends StatelessWidget {
  final RestaurantModel restaurant;
  final int votes;
  final double rating;
  final Color color;
  final String category;
  const RestaurantPageInfo({
    Key key,
    @required this.restaurant,
    @required this.votes,
    @required this.rating,
    @required this.color,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Spacer between cover and info
        SizedBox(height: 30.0),
        // Restaurant name
        Text(
          restaurant.name,
          style: TextStyle(
            color: Palette.font,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Spacer between name and stars
        SizedBox(height: 20.0),
        // Star ratings
        StarsRatings(
          rating: rating,
          fontSize: 16,
          alignCenter: true,
        ),

        // Spacer between stars and votes
        SizedBox(height: 20.0),
        // Vote counts
        VoteQuantity(
          votes: votes,
          fontSize: 16,
        ),

        // Spacer between votes and add button
        SizedBox(height: 20.0),
        // Add button
        RoundIconButton(
          icon: Icons.add,
          onTap: () {
            Navigator.pushNamed(
              context,
              '/addRating',
              arguments: RestaurantPageModel(
                restaurant: restaurant,
                color: color,
                category: category,
              ),
            );
          },
        ),
        // Spacer between add button and button text
        SizedBox(height: 10.0),
        // Button text
        Text(
          'შეაფასე $category',
          style: TextStyle(
            color: Palette.font,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
