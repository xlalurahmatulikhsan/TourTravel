import 'package:flutter/material.dart';
import 'package:slicing/shared/theme/theme.dart';

class ButtonCostum extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final Color? color;
  final BoxBorder? border;

  const ButtonCostum(
      {super.key,
      required this.onPressed,
      required this.child,
      this.color,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
          border: border),
      child: TextButton(onPressed: onPressed, child: child),
    );
  }
}

class TextButtonCostum extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const TextButtonCostum({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 12),
        ),
      ),
    );
  }
}
