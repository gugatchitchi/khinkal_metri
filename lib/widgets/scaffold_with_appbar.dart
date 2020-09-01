import 'package:flutter/material.dart';
import 'package:khinkal_metri/config/palette.dart';
import 'package:khinkal_metri/config/size_config.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

// Many pages have the same appbar on the top and bottomnavigation
// This widget is the wrapper for that kind of view
class ScaffoldWithAppbar extends StatelessWidget {
  final Widget body;
  const ScaffoldWithAppbar({Key key, @required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);
    // Scaffold
    return Scaffold(
      backgroundColor: Palette.bg,
      // Appbar
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: CustomAppBarWithLogo(),
      ),
      // Body
      body: body,
    );
  }
}
