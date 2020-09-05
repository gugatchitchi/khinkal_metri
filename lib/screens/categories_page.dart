// import 'package:flutter/material.dart';
// import 'package:khinkal_metri/configs/configs.dart';
// import 'package:khinkal_metri/widgets/widgets.dart';

// class CategoriesPage extends StatelessWidget {
//   const CategoriesPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Let's us use relative sizes, ex: 40% of the width
//     SizeConfig().init(context);
//     // Custom Scaffold
//     return ScaffoldWithAppbar(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // The header which width should not exceed 60% of the display
//           SizedBox(
//             width: SizeConfig.safeBlockHorizontal * 60,
//             child: Text(
//               'აირჩიე კატეგორია და გაიგე სად აკეთებენ საუკეთესოს',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Palette.font,
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           // Spacer between header and buttons
//           SizedBox(
//             width: double.infinity,
//             height: SizeConfig.safeBlockVertical * 10,
//           ),
//           // Button for khinkali page
//           FlatButtonWithIcon(
//             onTap: () {
//               Navigator.pushNamed(context, '/ratings', arguments: 0);
//             },
//             text: 'ხინკალი',
//             icon: MyCustomIcons.khinkali,
//             backgroundColor: Palette.accent_red,
//           ),
//           // Spacer between buttons
//           SizedBox(
//             width: double.infinity,
//             height: SizeConfig.safeBlockVertical * 5,
//           ),
//           // Button for shawarma page
//           FlatButtonWithIcon(
//             onTap: () {
//               Navigator.pushNamed(context, '/ratings', arguments: 1);
//             },
//             text: 'შაურმა',
//             icon: MyCustomIcons.shaurma,
//             backgroundColor: Palette.accent_green,
//           ),
//           // Spacer between buttons
//           SizedBox(
//             width: double.infinity,
//             height: SizeConfig.safeBlockVertical * 5,
//           ),
//           // Button for burger page
//           FlatButtonWithIcon(
//             onTap: () {
//               Navigator.pushNamed(context, '/ratings', arguments: 2);
//             },
//             text: 'ბურგერი',
//             icon: MyCustomIcons.burger,
//             backgroundColor: Palette.accent_yellow,
//           ),
//         ],
//       ),
//     );
//   }
// }
