import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  const RoundIconButton({Key key, @required this.icon, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 5.0,
      fillColor: Palette.bg,
      child: Icon(
        icon,
        color: Palette.font,
        size: SizeConfig.safeBlockHorizontal * 10,
      ),
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
      shape: CircleBorder(),
    );
  }
}
