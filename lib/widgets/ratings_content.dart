import 'package:flutter/material.dart';
import 'package:khinkal_metri/config/palette.dart';
import 'package:khinkal_metri/models/ratings_screen_arguments.dart';

class RatingsContent extends StatelessWidget {
  final RatingsScreenArguments args;
  const RatingsContent({Key key, @required this.args}) : super(key: key);

  String getTitle() {
    if (args.message == 'ხინკალი') return 'ხინკლის რეიტინგი';
    if (args.message == 'შაურმა') return 'შაურმის რეიტინგი';
    if (args.message == 'ბურგერი') return 'ბურგერის რეიტინგი';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Column(
        children: [
          Text(
            getTitle(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: Palette.font,
            ),
          ),
        ],
      ),
    );
  }
}
