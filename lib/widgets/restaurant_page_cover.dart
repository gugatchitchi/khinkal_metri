import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class RestaurantPageCover extends StatelessWidget {
  final String name;
  final Color color;
  final String imgUrl;
  const RestaurantPageCover({
    Key key,
    @required this.name,
    @required this.color,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: SizeConfig.blockSizeHorizontal * 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(SizeConfig.blockSizeHorizontal * 50),
              bottomRight: Radius.circular(SizeConfig.blockSizeHorizontal * 50),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.blockSizeHorizontal * 20,
          child: Hero(
            tag: name,
            child: RestaurantOvalImage(
              diameter: SizeConfig.blockSizeHorizontal * 70,
              imgUrl: imgUrl,
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: SizeConfig.blockSizeHorizontal * 10,
          child: RoundIconButton(
              icon: Icons.arrow_back,
              onTap: () {
                Navigator.pop(context);
              }),
        ),
      ],
    );
  }
}
