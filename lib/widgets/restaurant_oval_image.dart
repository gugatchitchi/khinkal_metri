import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';

class RestaurantOvalImage extends StatelessWidget {
  final double diameter;
  final String imgUrl;
  const RestaurantOvalImage({
    Key key,
    @required this.diameter,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: Palette.bg,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Palette.font.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(3, 3),
          )
        ],
        image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
