import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);
    // Custom Scaffold
    return ScaffoldWithAppbar(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text should not be wider than 60% of the screen
          SizedBox(
            width: SizeConfig.safeBlockHorizontal * 60,
            child: Text(
              'კეთილი იყოს შენი ფეხი ჩვენს პატარა აპლიკაციაში',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Palette.font,
              ),
            ),
          ),
          // Spacer between text and buttons
          SizedBox(
            height: SizeConfig.safeBlockHorizontal * 30,
            width: double.infinity,
          ),
          // Facebook button
          FlatButtonWithIcon(
            icon: MdiIcons.facebook,
            text: 'შემოდი Facebook',
            backgroundColor: Palette.accent_blue,
            onTap: () {
              Navigator.pushNamed(context, '/categories');
            },
          ),
          // Spacer between buttons
          SizedBox(
            height: SizeConfig.safeBlockHorizontal * 10,
            width: double.infinity,
          ),
          // Google+ button
          FlatButtonWithIcon(
            icon: MdiIcons.googlePlus,
            text: 'შემოდი Google+',
            backgroundColor: Palette.accent_yellow,
            onTap: () {
              Navigator.pushNamed(context, '/categories');
            },
          ),
        ],
      ),
    );
  }
}
