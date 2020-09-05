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
  List<Widget> _buildList(restaurantId, color, category) {
    // Declare list
    List<Widget> listItems = List();
    // category name
    String categoryName = '';
    if (category == 'ხინკალი') categoryName = 'ხინკლის შეფასებები';
    if (category == 'შუარმა') categoryName = 'შაურმის შეფასებები';
    if (category == 'ბურგერი') categoryName = 'ბურგერის შეფასებები';
    // Add comment title as first list item
    listItems.add(
      Padding(
        padding: EdgeInsets.fromLTRB(20.0, 60.0, 0.0, 10.0),
        child: Text(
          '$categoryName',
          style: TextStyle(
            color: Palette.font,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
    // Add every comment for restaurant
    for (var rating in AllData.ratings) {
      if (rating.restaurantId == restaurantId)
        listItems.add(
          RestaurantComment(
            name: rating.ownerName,
            rating: rating.rating,
            comment: rating.comment,
            date: rating.date,
            color: color,
          ),
        );
    }
    // add padding after last comment
    listItems.add(
      SizedBox(
        height: 40.0,
      ),
    );
    // return list
    return listItems;
  }

  // Count the votes
  int _getVotes(restaurantId) {
    // initialize count
    int count = 0;
    // itterate through ratings and increase count
    for (var rating in AllData.ratings) {
      if (rating.restaurantId == restaurantId) count++;
    }
    // return count
    return count;
  }

  // Calculate rating
  double _getRating(restaurantId) {
    // initialize count
    int count = 0;
    int sum = 0;
    // itterate through ratings and increase count
    for (var rating in AllData.ratings) {
      if (rating.restaurantId == restaurantId) {
        count++;
        sum = sum + rating.rating;
      }
    }
    // if no rating has yet been added
    if (count == 0) return 0.0;
    // return count
    return (sum / count);
  }

  @override
  Widget build(BuildContext context) {
    // Get Restaurant from routing arguments
    final RestaurantPageModel _pageData =
        ModalRoute.of(context).settings.arguments;
    final RestaurantModel _restaurant = _pageData.restaurant;
    final Color _color = _pageData.color;
    final String _category = _pageData.category;

    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Palette.bg,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: RestaurantPageCover(
              id: _restaurant.id,
              imgUrl: _restaurant.imgUrl,
              color: _color,
            ),
          ),
          SliverToBoxAdapter(
            child: RestaurantPageInfo(
              restaurant: _restaurant,
              color: _color,
              category: _category,
              votes: _getVotes(_restaurant.id),
              rating: _getRating(_restaurant.id),
            ),
          ),
          SliverList(
            delegate: new SliverChildListDelegate(
              _buildList(_restaurant.id, _color, _category),
            ),
          ),
        ],
      ),
    );
  }
}
