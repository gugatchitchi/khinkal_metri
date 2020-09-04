import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/palette.dart';

class VoteQuantity extends StatelessWidget {
  final int votes;
  final double fontSize;
  const VoteQuantity({
    Key key,
    @required this.votes,
    @required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${votes.toString()} ხმა',
      style: TextStyle(
        color: Palette.font,
        fontSize: fontSize,
      ),
    );
  }
}
