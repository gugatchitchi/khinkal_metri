import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class RestaurantPageCover extends StatelessWidget {
  final String id;
  final Color color;
  final String imgUrl;
  const RestaurantPageCover({
    Key key,
    @required this.id,
    @required this.color,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background
        Container(
          width: double.infinity,
          height: SizeConfig.blockSizeHorizontal * 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(
                SizeConfig.blockSizeHorizontal * 50,
                SizeConfig.safeBlockVertical * 20,
              ),
              bottomRight: Radius.elliptical(
                SizeConfig.blockSizeHorizontal * 50,
                SizeConfig.safeBlockVertical * 20,
              ),
            ),
          ),
        ),
        // Image
        Positioned(
          top: SizeConfig.blockSizeHorizontal * 15,
          child: Hero(
            tag: id,
            child: RestaurantOvalImage(
              diameter: SizeConfig.blockSizeHorizontal * 70,
              imgUrl: imgUrl,
            ),
          ),
        ),
        // Back Button
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
