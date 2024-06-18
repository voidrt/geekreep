import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geekreep/theme/paddings.dart';

class WhiteGeekieIcon extends StatelessWidget {
  const WhiteGeekieIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.only(
          top: Paddings.veryBig,
          bottom: Paddings.big,
        ),
        child: SvgPicture.asset(
          'assets/icons/logoGeekieOneBranco.svg',
        ),
      ),
    );
  }
}
