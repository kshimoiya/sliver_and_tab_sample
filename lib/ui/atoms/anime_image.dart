import 'package:flutter/material.dart';

class AnimeImage extends StatelessWidget {
  final String id;
  final String imageUrl;
  final double width;
  final double elevation;
  final double radius;

  const AnimeImage({
    Key key,
    @required this.id,
    @required this.imageUrl,
    @required this.width,
    this.elevation = 5.0,
    this.radius = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "image-$id",
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(radius),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            width: width,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
