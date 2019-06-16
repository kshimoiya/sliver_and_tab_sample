import 'package:flutter/material.dart';

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context, {bool flag = false}) {
  if (flag) return size * MediaQuery.of(context).size.height / baseHeight;
  return size;
}
