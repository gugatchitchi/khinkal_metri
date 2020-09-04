import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';

class StarsRatings extends StatelessWidget {
  final double rating;
  final double fontSize;
  final bool alignCenter;
  const StarsRatings({
    Key key,
    @required this.rating,
    @required this.fontSize,
    this.alignCenter = false,
  }) : super(key: key);

  // How many stars before remainder
  // ex: 3.5 will return 3 and 4.8 will return 4
  int _getFullStars(rating) {
    return rating.floor();
  }

  // If remainder is more than 0.5 we need full
  // star, else half star
  bool _needsFullStar(rating) {
    return rating - rating.floor() > 0.5;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          alignCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          rating.toString(),
          style: TextStyle(
            color: Palette.font,
            fontSize: fontSize,
          ),
        ),

        // Spacer
        SizedBox(width: fontSize / 4),

        // Full Stars
        for (var i = 0; i < _getFullStars(rating); i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fontSize / 8),
            child: Icon(
              Icons.star,
              color: Palette.font,
              size: fontSize,
            ),
          ),

        // Last Star
        _needsFullStar(rating)
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: fontSize / 8),
                child: Icon(
                  Icons.star,
                  color: Palette.font,
                  size: fontSize,
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: fontSize / 8),
                child: Icon(
                  Icons.star_half,
                  color: Palette.font,
                  size: fontSize,
                ),
              ),
      ],
    );
  }
}
