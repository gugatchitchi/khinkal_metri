import 'package:flutter/material.dart';
import 'package:khinkal_metri/config/size_config.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class RatingsPage extends StatelessWidget {
  const RatingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);
    // Custom Scaffold
    return ScaffoldWithAppbar(
      body: Center(
        child: Text('Ratings Page'),
      ),
    );
  }
}
