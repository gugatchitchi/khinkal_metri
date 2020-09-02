import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';

class AddRestaurantMessage extends StatelessWidget {
  const AddRestaurantMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          padding: EdgeInsets.all(20.0),
          width: SizeConfig.safeBlockHorizontal * 80,
          decoration: BoxDecoration(
            color: Palette.accent_yellow,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Palette.font.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(3, 3),
              )
            ],
          ),
          child: Text(
            'თუ რომელიმე რესტორანს ვერ პოულობ მოგვწერე',
            style: TextStyle(color: Palette.font, height: 2.0),
          ),
        ),
        Positioned(
          left: SizeConfig.safeBlockHorizontal * 75,
          top: 20.0,
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 10.0,
            fillColor: Palette.bg,
            child: Icon(
              Icons.add,
              color: Palette.font,
              size: SizeConfig.safeBlockHorizontal * 10,
            ),
            padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
            shape: CircleBorder(),
          ),
        ),
      ],
    );
  }
}
