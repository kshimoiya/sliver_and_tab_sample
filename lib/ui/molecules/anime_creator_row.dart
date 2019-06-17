import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';

class AnimeCreatorRow extends StatelessWidget {
  final String vendor;
  final String broadcaster;
  final double fontSize;
  final Color fontColor;

  const AnimeCreatorRow({
    Key key,
    this.vendor = '',
    this.broadcaster = '',
    this.fontSize = 8.0,
    this.fontColor = const Color(0xFF030D11),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // TODO: Text Overflow
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            vendor,
            style: textTheme.caption.copyWith(
                color: fontColor,
                fontSize: screenAwareSize(fontSize, context, flag: true),
                decoration: TextDecoration.underline),
          ),
          Text(
            ",",
            style: textTheme.caption.copyWith(
              color: fontColor,
            ),
          ),
          Text(
            broadcaster, //Broadcaster
            style: textTheme.caption.copyWith(
                color: fontColor,
                fontSize: screenAwareSize(fontSize, context, flag: true),
                decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
