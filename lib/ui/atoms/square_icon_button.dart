import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';

class SquareIconButton extends StatelessWidget {
  final double radius;
  final double height;
  final double width;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final String text;
  final double fontSize;
  final Color textColor;
  final bool isCheck;
  final Function onPressed;

  SquareIconButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.icon,
    this.radius = 4.0,
    this.backgroundColor = Colors.white,
    this.padding,
    this.iconColor = Colors.deepOrangeAccent,
    this.iconSize = 24.0,
    this.text = '',
    this.fontSize = 8.0,
    this.textColor = Colors.deepOrangeAccent,
    this.isCheck = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
          onTap: onPressed,
          child: isCheck ? _buildFillButton(context) : _buildUnFillButton(context)),
    );
  }

  _buildUnFillButton(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: textColor, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: _buildChild(context),
    );
  }

  _buildFillButton(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: backgroundColor,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: padding,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Icon(
                icon,
                color: iconColor,
                size: screenAwareSize(iconSize, context, flag: true),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            text,
            style: textTheme.overline.copyWith(
                fontSize: screenAwareSize(fontSize, context, flag: true), color: textColor),
          ),
        ],
      ),
    );
  }
}
