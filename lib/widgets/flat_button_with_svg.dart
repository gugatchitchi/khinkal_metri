import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khinkal_metri/configs/configs.dart';

//  This widget returns button with svg inside and shadow
class FlatButtonWithSvg extends StatelessWidget {
  final Function onTap;
  final String text;
  final String svgAsset;
  final Color backgroundColor;

  const FlatButtonWithSvg(
      {Key key,
      @required this.onTap,
      @required this.text,
      @required this.svgAsset,
      @required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FlatButton(
      onPressed: onTap,
      child: Container(
        // Button will take 60% of the display
        width: SizeConfig.safeBlockHorizontal * 60,
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: backgroundColor,
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
        child: Row(
          children: [
            // Icon on the left
            SvgPicture.asset(
              svgAsset,
              width: 35.0,
            ),
            // Spacer between icon and text
            SizedBox(width: 10.0),
            // Text on the right
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: Palette.font,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
