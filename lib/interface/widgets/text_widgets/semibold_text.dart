import 'package:flutter/material.dart';
import 'package:geekreep/theme/paddings.dart';

class SemiBoldStandardText extends StatelessWidget {
  const SemiBoldStandardText({
    super.key,
    required this.text,
    this.color,
    this.padding,
  });

  final String text;
  final Color? color;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: color ?? Theme.of(context).colorScheme.surface,
          fontFamily: 'Exo',
        ),
      ),
    );
  }
}

class SemiBoldHeadlineText extends StatelessWidget {
  const SemiBoldHeadlineText({
    super.key,
    required this.text,
    this.padding,
    this.colour,
  });

  final String text;
  final double? padding;
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? Paddings.extraSmall),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: colour ?? Theme.of(context).colorScheme.surface,
            ),
      ),
    );
  }
}
