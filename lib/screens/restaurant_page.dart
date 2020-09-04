import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({
    Key key,
  }) : super(key: key);

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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: SizeConfig.blockSizeHorizontal * 100,
                  decoration: BoxDecoration(
                    color: restaurant.color,
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(SizeConfig.blockSizeHorizontal * 50),
                      bottomRight:
                          Radius.circular(SizeConfig.blockSizeHorizontal * 50),
                    ),
                  ),
                ),
                Positioned(
                  top: SizeConfig.blockSizeHorizontal * 20,
                  child: Hero(
                    tag: restaurant.name,
                    child: RestaurantOvalImage(
                      diameter: SizeConfig.blockSizeHorizontal * 70,
                      imgUrl: restaurant.imgUrl,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: SizeConfig.blockSizeHorizontal * 10,
                  child: RoundIconButton(
                      icon: Icons.arrow_back,
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
