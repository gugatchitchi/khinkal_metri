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
                    // Yellow message whic informs users
                    // to inform us to add missing restaurant
                    SliverToBoxAdapter(
                      child: AddRestaurantMessage(),
                    ),
                    SliverToBoxAdapter(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Image.network(
                            AllData.restaurantsData[0].imgUrl,
                          ),
                        ],
                      ),
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
