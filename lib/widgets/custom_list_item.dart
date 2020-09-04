import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/widgets/widgets.dart';

class CustomListItem extends StatelessWidget {
  final RestaurantModel restaurant;
  final int index;

  const CustomListItem({
    Key key,
    @required this.restaurant,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);
    // Set diameter of circle pictures
    double pictureDiameter = SizeConfig.safeBlockHorizontal * 20;
    // Item List Padding adds whitespace outside of list item
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Number in front of list item
          Text(
            '$index)',
            style: TextStyle(
              color: Palette.font,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Spacer between number and list item
          SizedBox(width: SizeConfig.safeBlockHorizontal * 4),

          // This contains picture and restaurant colorfull container
          Expanded(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                // Colored Container
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/restaurant',
                        arguments: restaurant);
                  },
                  child: Container(
                    height: pictureDiameter + SizeConfig.safeBlockVertical * 5,
                    // Margin and padding is needed to move container
                    // from under the picture and make texts visible
                    margin: EdgeInsets.only(
                      left: pictureDiameter / 2,
                    ),
                    padding: EdgeInsets.only(
                      left: pictureDiameter / 2 +
                          SizeConfig.safeBlockHorizontal * 3,
                    ),
                    decoration: BoxDecoration(
                      color: restaurant.color,
                      // color: Palette.accent_red,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Palette.font.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(3, 3),
                        )
                      ],
                    ),

                    // Contains 3 rows:
                    // 1) restaurant name
                    // 2) divider
                    // 3) info about votes
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Restaurant Name
                        Row(
                          children: [
                            Text(
                              restaurant.name,
                              style: TextStyle(
                                color: Palette.font,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),

                        // Divider between name and votes info
                        Container(
                          height: 3.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Palette.font,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),

                        // Votes Info
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Stars
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '4.7',
                                  style: TextStyle(
                                    color: Palette.font,
                                    fontSize: 10.0,
                                  ),
                                ),
                                for (var i = 0; i < 4; i++)
                                  Icon(
                                    Icons.star,
                                    color: Palette.font,
                                    size: 12.0,
                                  ),
                                Icon(
                                  Icons.star_half,
                                  color: Palette.font,
                                  size: 12.0,
                                ),
                              ],
                            ),

                            // Vote quantity
                            Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.safeBlockHorizontal * 3),
                              child: Text(
                                '(126 ხმა)',
                                style: TextStyle(
                                  color: Palette.font,
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Restaurant Image
                Hero(
                  tag: restaurant.name,
                  child: RestaurantOvalImage(
                    diameter: pictureDiameter,
                    imgUrl: restaurant.imgUrl,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
