import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';

class StarsRatings extends StatelessWidget {
  final double rating;
  final double fontSize;
  final bool alignCenter;
  final bool isComment;
  const StarsRatings({
    Key key,
    @required this.rating,
    @required this.fontSize,
    this.alignCenter = false,
    this.isComment = false,
  }) : super(key: key);

  // How many full stars and do we need half star
  // ex: 3.4 will return 3 full and 1 half star
  // ex: 4.8 will return 5 full stars
  // ex: 4.0 will return 4 full stars
  Widget _renderStars(rating) {
    List<Widget> stars = List();

    double remainder = rating - rating.floor();

    if (remainder == 0.0) {
      for (var i = 0; i < rating; i++) {
        stars.add(
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fontSize / 8),
            child: Icon(
              Icons.star,
              color: Palette.font,
              size: fontSize,
            ),
          ),
        );
      }
    } else if (remainder > 0.5) {
      for (var i = 0; i < rating + 1; i++) {
        stars.add(
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fontSize / 8),
            child: Icon(
              Icons.star,
              color: Palette.font,
              size: fontSize,
            ),
          ),
        );
      }
    } else {
      for (var i = 0; i < rating; i++) {
        stars.add(
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fontSize / 8),
            child: Icon(
              Icons.star,
              color: Palette.font,
              size: fontSize,
            ),
          ),
        );
      }
      stars.add(
        Padding(
          padding: EdgeInsets.symmetric(horizontal: fontSize / 8),
          child: Icon(
            Icons.star_half,
            color: Palette.font,
            size: fontSize,
          ),
        ),
      );
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          alignCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          isComment ? rating.toStringAsFixed(0) : rating.toStringAsFixed(1),
          style: TextStyle(
            color: Palette.font,
            fontSize: fontSize,
          ),
        ),

        // Spacer
        SizedBox(width: fontSize / 4),

        // Render Stars
        _renderStars(rating),
      ],
    );
  }
}
