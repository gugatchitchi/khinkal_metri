import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/widgets/widgets.dart';
import 'package:khinkal_metri/models/models.dart';
import 'package:khinkal_metri/data/data.dart';

class RatingsPage extends StatefulWidget {
  const RatingsPage({Key key}) : super(key: key);

  @override
  _RatingsPageState createState() => _RatingsPageState();
}

class _RatingsPageState extends State<RatingsPage> {
  // To controll page view
  int _pageIndex = 0;
  PageController _pageController;

  // List of the Pages
  List<RatingsPageModel> _pages = RestaurantPagesData.pages;

  // Initialising page controller with page index
  @override
  void initState() {
    _pageController = new PageController(
      initialPage: _pageIndex,
    );
    super.initState();
  }

  // Disposing page controller
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // Generates Custom List of Restaurants
  List<Widget> _buildList() {
    // initilize list
    List<Widget> listItems = List();
    List<RestaurantModel> restaurants = List();
    // which category to show
    String category = _pages[_pageIndex].name;
    // filter restaurants list based on page category
    if (category == 'ხინკალი')
      restaurants = AllData.restaurantsData
          .where((r) => r.khinkaliRestaurant == true)
          .toList();
    if (category == 'შაურმა')
      restaurants = AllData.restaurantsData
          .where((r) => r.shaurmaRestaurant == true)
          .toList();
    if (category == 'ბურგერი')
      restaurants = AllData.restaurantsData
          .where((r) => r.burgerRestaurant == true)
          .toList();
    // Sort restaurants based on vote count
    restaurants.sort((a, b) => -_getVotes(a.id).compareTo(_getVotes(b.id)));
    // itterate through restorants and add listItem for each
    for (int i = 0; i < restaurants.length; i++) {
      listItems.add(
        CustomListItem(
          restaurant: restaurants[i],
          index: i + 1,
          votes: _getVotes(restaurants[i].id),
          rating: _getRating(restaurants[i].id),
          color: _pages[_pageIndex].color,
          category: category,
        ),
      );
    }
    // This line adds padding at the bottom of the list
    listItems.add(
      SizedBox(
        height: 150.0,
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
    // Let's us use relative sizes, ex: 40% of the width
    SizeConfig().init(context);

    // Custom Scaffold
    return ScaffoldWithAppbar(
      body: Stack(
        children: [
          // PageView
          new PageView(
            controller: _pageController,
            onPageChanged: (newPage) {
              setState(() {
                this._pageIndex = newPage;
              });
            },

            // Generate Pages
            children: <Widget>[
              for (var page in _pages)
                new CustomScrollView(
                  slivers: [
                    // Yellow message which informs users
                    // to inform us to add missing restaurant
                    SliverToBoxAdapter(
                      child: AddRestaurantMessage(),
                    ),

                    // Restaurants List
                    SliverList(
                      delegate: new SliverChildListDelegate(_buildList()),
                    ),
                  ],
                ),
            ],
          ),

          // Bottom Navigation
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomBottomNavigation(
              pageIndex: _pageIndex,
              pageController: _pageController,
              pages: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
