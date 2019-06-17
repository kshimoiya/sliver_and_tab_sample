import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';

class IconUnderTextButton extends StatelessWidget {
  final double height;
  final double width;
  final String asset;
  final String text;
  final EdgeInsetsGeometry padding;
  final double fontSize;
  final Function onPressed;

  const IconUnderTextButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.asset,
    this.padding,
    this.fontSize = 8.0,
    this.text = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              asset,
              width: width,
              height: height,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              text,
              style: textTheme.overline
                  .copyWith(fontSize: screenAwareSize(fontSize, context, flag: true)),
            ),
          ],
        ),
      ),
    );
  }
}
