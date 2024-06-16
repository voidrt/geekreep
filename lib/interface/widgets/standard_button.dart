import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geekreep/interface/widgets/text_widgets/semibold_text.dart';

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
        padding: EdgeInsets.all(padding ?? 2),
        margin: EdgeInsets.all(margin ?? 16),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.all(
            Radius.circular(roundness),
          ),
        ),
        child: Center(
          child: leadingIcon == null
              ? TextButton(
                  onPressed: () => onTap(),
                  style: const ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: SemiBoldStandardText(
                    text: text,
                  ),
                )
              : TextButton.icon(
                  icon: SvgPicture.asset('assets/icons/$leadingIcon'),
                  onPressed: () {},
                  label: SemiBoldStandardText(
                    text: text,
                  ),
                ),
        ),
      ),
    );
  }
}
