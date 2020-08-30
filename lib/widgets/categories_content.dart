import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khinkal_metri/config/palette.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/screens/screens.dart';

class CategoriesContent extends StatelessWidget {
  const CategoriesContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Text(
              'კატეგორიები',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Palette.font,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Text(
              'აირჩიე კატეგორია და გაიგე სად აკეთებენ საუკეთესოს',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                color: Palette.font,
              ),
            ),
          ),
          _Button(
            svgAsset: 'assets/icons/khinkali.svg',
            text: 'ხინკალი',
            color: Palette.accent_red,
          ),
          _Button(
            svgAsset: 'assets/icons/shaurma.svg',
            text: 'შაურმა',
            color: Palette.accent_green,
          ),
          _Button(
            svgAsset: 'assets/icons/burger.svg',
            text: 'ბურგერი',
            color: Palette.accent_yellow,
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String svgAsset;
  final String text;
  final Color color;

  const _Button(
      {Key key,
      @required this.svgAsset,
      @required this.text,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Ratings.routeName,
          arguments: RatingsScreenArguments(
            text,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svgAsset,
              height: 35.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Palette.font,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
