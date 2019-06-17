import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';

class AnimeTitleRow extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final int age;

  const AnimeTitleRow({
    Key key,
    this.title = '',
    this.textColor = const Color(0xFF030D11),
    this.fontSize = 12.0,
    this.age = 2019,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Text(
              title,
              style: textTheme.subtitle.copyWith(
                color: textColor,
                fontSize: screenAwareSize(
                  fontSize,
                  context,
                  flag: true,
                ),
                fontWeight: FontWeight.w700,
              ),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: double.infinity,
            child: Text(
              '$age',
              style: textTheme.subtitle.copyWith(
                color: textColor,
                fontSize: screenAwareSize(
                  fontSize,
                  context,
                  flag: true,
                ),
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
