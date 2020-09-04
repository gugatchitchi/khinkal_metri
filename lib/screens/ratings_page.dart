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
  List<RatingsPageModel> pages = [
    RatingsPageModel(
      name: 'ხინკალი',
      icon: MyCustomIcons.khinkali,
      color: Palette.accent_red,
    ),
    RatingsPageModel(
      name: 'შაურმა',
      icon: MyCustomIcons.shaurma,
      color: Palette.accent_green,
    ),
    RatingsPageModel(
      name: 'ბურგერი',
      icon: MyCustomIcons.burger,
      color: Palette.accent_yellow,
    ),
  ];

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
    List<Widget> listItems = List();

    for (int i = 0; i < AllData.restaurantsData.length; i++) {
      listItems.add(
        CustomListItem(
          restaurant: AllData.restaurantsData[i],
          index: i + 1,
        ),
      );
    }

    // This line adds padding at the bottom of the list
    listItems.add(SizedBox(
      height: 150.0,
    ));

    return listItems;
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
              for (var page in pages)
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
              pages: pages,
            ),
          ),
        ],
      ),
    );
  }
}
