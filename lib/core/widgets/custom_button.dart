import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.borderRadius,
      this.backgroundColor,
      this.textcolor,
      this.onPressed,
      this.fontSize});
  final String text;
  final BorderRadius borderRadius;
  final Color? backgroundColor;
  final Color? textcolor;
  final void Function()? onPressed;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
                color: textcolor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
