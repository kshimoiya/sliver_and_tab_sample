import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';
import 'package:sliver_header_sample/ui/atoms/rating_bar.dart';

class RatingContainer extends StatelessWidget {
  final double radius;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final double height;
  final double width;
  final Color backgroundColor;
  final int total;
  final double totalContainerSize;
  final double totalTextSize;
  final Color totalTextColor;
  final double rating;
  final double ratingContainerSize;
  final double ratingTextSize;
  final Color ratingTextColor;

  RatingContainer({
    Key key,
    @required this.height,
    @required this.width,
    this.radius = 10.0,
    this.elevation = 5.0,
    this.padding,
    this.backgroundColor = Colors.white,
    this.total = 0,
    this.totalContainerSize = 24.0,
    this.totalTextSize = 8.0,
    this.totalTextColor = const Color(0xFF030D11),
    this.rating = 0.0,
    this.ratingContainerSize = 20.0,
    this.ratingTextSize = 12.0,
    this.ratingTextColor = Colors.deepOrangeAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(radius),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          padding: padding,
          height: height,
          width: width,
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width:
                    screenAwareSize(ratingContainerSize, context, flag: true),
                child: Text(
                  '$rating',
                  style: textTheme.body2.copyWith(
                    color: ratingTextColor,
                    fontWeight: FontWeight.w700,
                    fontSize:
                        screenAwareSize(ratingTextSize, context, flag: true),
                  ),
                ),
              ),
              Expanded(
                child: RatingBar(
                  fill: Icons.star,
                  unFill: Icons.star_border,
                  length: 5,
                  rating: rating,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: screenAwareSize(totalContainerSize, context, flag: true),
                child: Text(
                  total > 99 ? '(99+)' : '($total)',
                  style: textTheme.body2.copyWith(
                      color: totalTextColor,
                      fontSize:
                          screenAwareSize(totalTextSize, context, flag: true)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
