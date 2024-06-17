import 'package:flutter/material.dart';

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
