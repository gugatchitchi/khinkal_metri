import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class AddRatingPage extends StatelessWidget {
  const AddRatingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get Restaurant from routing arguments
    final RestaurantPageModel pageModel =
        ModalRoute.of(context).settings.arguments;
    final RestaurantModel restaurant = pageModel.restaurant;
    final String category = pageModel.category;
    final Color color = pageModel.color;

    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Palette.bg,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: RestaurantPageCover(
              id: restaurant.id,
              color: color,
              imgUrl: restaurant.imgUrl,
            ),
          ),
          SliverToBoxAdapter(
            child: AddRatingForm(
              restaurantId: restaurant.id,
              category: category,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
