import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khinkal_metri/configs/configs.dart';

// This appbar is used to dispay icon on the top of pages
class CustomAppBarWithLogo extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBarWithLogo({
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  final String logoSVG = 'assets/icons/KhinkalMeter.svg';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.bg,
      elevation: 0,
      centerTitle: false,
      // Logo on the left
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
        child: SvgPicture.asset(
          logoSVG,
        ),
      ),
      // Text on the right
      title: Text(
        'ხინკალმეტრი',
        style: TextStyle(
          color: Palette.font,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
