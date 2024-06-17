import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geekreep/interface/widgets/text_widgets/semibold_text.dart';
import 'package:geekreep/theme/paddings.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.roundness = 50.0,
    this.leadingIcon,
  });

  final Function onTap;
  final String text;
  final double roundness;
  final String? leadingIcon;
  final Color? backgroundColor;
  final double? margin;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(padding ?? 8),
        margin: EdgeInsets.symmetric(horizontal: margin ?? 16, vertical: 4),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(roundness),
        ),
        child: Center(
          child: Stack(
            children: [
              Visibility(
                visible: leadingIcon != null,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: Paddings.extraSmall),
                    child: SvgPicture.asset('assets/icons/$leadingIcon'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SemiBoldStandardText(
                  text: text,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
