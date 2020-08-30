import 'package:flutter/material.dart';
import 'package:khinkal_metri/config/palette.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class Ratings extends StatelessWidget {
  const Ratings({Key key}) : super(key: key);

  static const routeName = '/ratings';

  @override
  Widget build(BuildContext context) {
    final RatingsScreenArguments args =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Palette.bg,
      // bottomNavigationBar:
      body: ListView(
        children: [
          Logo(),
          RatingsInfoMessage(),
          RatingsContent(
            args: args,
          ),
        ],
      ),
    );
  }
}
