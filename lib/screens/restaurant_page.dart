import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/data/data.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({
    Key key,
  }) : super(key: key);

  // Generates Custom List of Restaurants
  // List<Widget> _buildList() {
  //   List<Widget> listItems = List();

  //   for (int i = 0; i < AllData.ratings.length; i++) {
  //     listItems.add(
  //       RestaurantComment(
  //         name: ,
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // Get Restaurant from routing arguments
    final RestaurantModel restaurant =
        ModalRoute.of(context).settings.arguments;

    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Palette.bg,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: RestaurantPageCover(
              name: restaurant.name,
              color: restaurant.color,
              imgUrl: restaurant.imgUrl,
            ),
          ),
          SliverToBoxAdapter(
            child: RestaurantPageInfo(name: restaurant.name),
          ),
          // SliverList(
          //   delegate: new SliverChildListDelegate(_buildList()),
          // ),
        ],
      ),
    );
  }
}
