import 'package:flutter/material.dart';

Color kBGcolor = Color(102733);
Color kPrimaryColor = colorCode('#29404E');
Color kYlwoColor = colorCode('#FFA700');

//allow to ues hex color code

Color colorCode(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');

  if (hexColor.length == 6) {
    hexColor = 'FF' + hexColor;
  }

  return Color(int.parse(hexColor, radix: 16));
}
