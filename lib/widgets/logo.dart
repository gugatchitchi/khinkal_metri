import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../config/palette.dart';

class Logo extends StatelessWidget {
  const Logo({Key key}) : super(key: key);

  final String logoSVG = 'assets/icons/KhinkalMeter.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          SvgPicture.asset(
            logoSVG,
            height: 25.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            'ხინკალმეტრი',
            style: TextStyle(
              color: Palette.font,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
