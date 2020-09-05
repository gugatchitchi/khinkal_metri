import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/models/models.dart';

class RestaurantPagesData {
  // We have 3 pages, for: khinkali, shaurma and burger.
  // their icons, as well as accent color is defined here.
  static List<RatingsPageModel> pages = [
    RatingsPageModel(
      name: 'ხინკალი',
      color: Palette.accent_red,
      icon: MyCustomIcons.khinkali,
    ),
    RatingsPageModel(
      name: 'შაურმა',
      color: Palette.accent_green,
      icon: MyCustomIcons.shaurma,
    ),
    RatingsPageModel(
      name: 'ბურგერი',
      color: Palette.accent_blue,
      icon: MyCustomIcons.burger,
    ),
  ];
}
