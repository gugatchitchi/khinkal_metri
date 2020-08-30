import 'package:flutter/material.dart';
import 'package:khinkal_metri/config/palette.dart';

class RatingsInfoMessage extends StatelessWidget {
  const RatingsInfoMessage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'თუ რომელიმე რესტორანს ვერ პოულობ მოგვწერე',
              style: TextStyle(
                color: Palette.font,
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
              ),
            ),
          ),
          Ink(
            decoration: ShapeDecoration(
              color: Palette.accent_yellow,
              shape: CircleBorder(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.add),
                color: Palette.font,
                iconSize: 25.0,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
