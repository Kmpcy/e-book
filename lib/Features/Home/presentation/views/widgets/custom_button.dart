import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textColor,
    this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 55,
        child: TextButton(
          onPressed: onPressed ?? () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
           
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          child: Text(
            text,
            style: Booksy.text18.copyWith(color: textColor, fontSize: 18),
          ),
        ));
  }
}
