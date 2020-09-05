import 'package:flutter/material.dart';
import 'package:khinkal_metri/widgets/add_restaurant_form.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class AddRestaurantPage extends StatelessWidget {
  const AddRestaurantPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithAppbar(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundIconButton(
                icon: Icons.arrow_back,
                onTap: () {
                  Navigator.pop(context);
                }),
            AddRestaurantForm(),
            SizedBox(
              height: 50.0,
            )
          ]),
    );
  }
}
