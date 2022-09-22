import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final Color hintTextColor;
  final Color backgroundColor;
  final Color borderColor;
  String? hintText;
  IconData icon;
  double size;
  bool obscureText;
  TextForm({Key? key,
  required this.hintTextColor,
  required this.backgroundColor,
  required this.borderColor,
  this.hintText,
  required this.size,
  required this.icon,
    this.obscureText=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size * 6,
      height: size,
      color: backgroundColor,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon,
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: hintTextColor),
        ),
      ),
    );
  }
}
