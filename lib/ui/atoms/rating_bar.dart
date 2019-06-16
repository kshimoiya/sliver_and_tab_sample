import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';

class RatingBar extends StatelessWidget {
  final IconData fill;
  final IconData unFill;
  final int length;
  final Color color;
  final double rating;
  final double size;

  RatingBar({
    Key key,
    @required this.fill,
    @required this.unFill,
    this.length = 5,
    this.color = Colors.deepOrangeAccent,
    this.rating = 0,
    this.size = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(length, (index) {
          return Icon(
            index < rating ? fill : unFill,
            color: color,
            size: screenAwareSize(size, context, flag: true),
          );
        }),
      ),
    );
  }
}
