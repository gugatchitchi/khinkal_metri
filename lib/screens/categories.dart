import 'package:flutter/material.dart';
import 'package:khinkal_metri/config/palette.dart';
import '../widgets/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg,
      body: Column(
        children: [
          Logo(),
          Expanded(child: CategoriesContent()),
        ],
      ),
    );
  }
}
