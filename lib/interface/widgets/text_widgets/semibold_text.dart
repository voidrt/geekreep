import 'package:flutter/material.dart';

class SemiBoldStandardText extends StatelessWidget {
  const SemiBoldStandardText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        fontFamily: 'Exo',
      ),
    );
  }
}
