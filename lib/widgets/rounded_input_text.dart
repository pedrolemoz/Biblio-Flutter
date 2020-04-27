import 'package:biblio/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputText extends StatelessWidget {
  RoundedInputText(
      {@required this.labelText,
      @required this.type,
      @required this.isPassword,
      @required this.controller});

  final TextEditingController controller;
  final String labelText;
  final TextInputType type;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      child: TextField(
        controller: controller,
        showCursor: false,
        keyboardType: type,
        obscureText: isPassword,
        style: kInputTextStyle,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15.0),
          filled: true,
          fillColor: kBackgroundGreyColor,
          hintText: labelText,
          hintStyle: kHintTextStyle,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }
}
