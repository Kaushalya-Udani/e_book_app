import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String text;
  double width;
  double heigth;
  AppButton({Key? key,
    required this.textColor,
    required this.backgroundColor,
    required this.text,
    required this.width,
    required this.heigth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 6,
      height: heigth,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
