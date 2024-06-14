import 'package:flutter/material.dart';
import 'package:geekreep/theme/dark/colours.dart';
import 'package:geekreep/theme/paddings.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
    this._controller, {
    super.key,
    required this.hintText,
    required this.obscureText,
  });

  final TextEditingController _controller;
  final String hintText;
  final bool obscureText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  void dispose() {
    widget._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Paddings.small,
      ),
      child: TextField(
        controller: widget._controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: Paddings.defaultSize + 5,
            vertical: Paddings.defaultSize,
          ),
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
        ),
      ),
    );
  }
}
