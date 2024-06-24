import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WhiteGeekieIcon extends StatelessWidget {
  const WhiteGeekieIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        child: SvgPicture.asset(
          'assets/icons/logoGeekieOneBranco.svg',
        ),
      ),
    );
  }
}
