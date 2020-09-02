import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';

// This Widget returns buttons with icons and shadow
class FlatButtonWithIcon extends StatelessWidget {
  final Function onTap;
  final String text;
  final IconData icon;
  final Color backgroundColor;

  const FlatButtonWithIcon(
      {Key key,
      @required this.onTap,
      @required this.text,
      @required this.icon,
      @required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FlatButton(
      onPressed: onTap,
      child: Container(
        // Width of the button is 60% of the display
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
            //  Icon Part on the left
            Icon(
              icon,
              size: 25.0,
              color: Palette.font,
            ),
            // Spacer between icon and text
            SizedBox(width: 10.0),
            // Text part on the right
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
