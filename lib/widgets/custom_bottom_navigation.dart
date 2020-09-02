import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/models/models.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int pageIndex;
  final PageController pageController;
  final List<RatingsPageModel> pages;

  const CustomBottomNavigation({
    Key key,
    @required this.pageIndex,
    @required this.pageController,
    @required this.pages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Palette.bg,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
        boxShadow: [
          BoxShadow(
            color: Palette.font.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, -3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < pages.length; i++)
            CustomBottomNavigationButton(
              onTap: () {
                pageController.animateToPage(
                  i,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
              icon: pages[i].icon,
              isActive: pageIndex == i,
              backgroundColor: pages[i].color,
            ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationButton extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Color backgroundColor;
  final Function onTap;

  const CustomBottomNavigationButton({
    Key key,
    @required this.icon,
    @required this.isActive,
    @required this.backgroundColor,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 0.0,
      fillColor: isActive ? backgroundColor : Palette.bg,
      child: Icon(
        icon,
        size: 25.0,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
