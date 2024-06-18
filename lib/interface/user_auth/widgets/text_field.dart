import 'package:flutter/material.dart';
import 'package:geekreep/theme/paddings.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
    this._controller, {
    super.key,
    required this.hintText,
    required this.obscureText,
    this.icon,
  });

  final TextEditingController _controller;
  final String hintText;
  final bool obscureText;
  final Icon? icon;

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
        horizontal: Paddings.big,
      ),
      child: TextField(
        controller: widget._controller,
        obscureText: widget.obscureText,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
          icon: widget.icon,
        ),
      ),
    );
  }
}
