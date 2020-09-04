import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class RestaurantPageInfo extends StatelessWidget {
  final String name;
  const RestaurantPageInfo({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30.0),
        Text(
          name,
          style: TextStyle(
            color: Palette.font,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.0),
        StarsRatings(
          rating: 4.4,
          fontSize: 16,
          alignCenter: true,
        ),
        SizedBox(height: 20.0),
        VoteQuantity(
          votes: 1126,
          fontSize: 16,
        ),
        SizedBox(height: 20.0),
        RoundIconButton(icon: Icons.add, onTap: () {}),
        SizedBox(height: 10.0),
        Text(
          'შეაფასე',
          style: TextStyle(
            color: Palette.font,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
