import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColor,
    this.margin,
    this.padding,
    this.roundness = 8.0,
  });

  final Function onTap;
  final String text;
  final double roundness;
  final Color? backgroundColor;
  final double? margin;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(padding ?? 15),
        margin: EdgeInsets.all(margin ?? 0),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.all(
            Radius.circular(roundness),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
