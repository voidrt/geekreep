import 'package:flutter/material.dart';

class GeekieTextStyle {
  static const standardText = TextStyle(
    fontFamily: 'Exo',
    fontSize: GeekieTextSizes.bodyTextSize,
    fontWeight: FontWeight.w300,
  );
  static const subtitleText = TextStyle(
    fontFamily: 'Exo',
    fontSize: GeekieTextSizes.smallBodyTextSize,
    fontWeight: FontWeight.w200,
  );
  static const headlineText = TextStyle(
    fontFamily: 'Exo',
    fontSize: GeekieTextSizes.headlineTextSize,
    fontWeight: FontWeight.w300,
  );
}

class GeekieTextSizes {
  static const double smallBodyTextSize = 16;
  static const double bodyTextSize = 18;
  static const double headlineTextSize = 28;
}
