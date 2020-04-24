import 'package:biblio/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputText extends StatelessWidget {
  // TODO: Implementar o controller do text field

  RoundedInputText({@required this.labelText, @required this.type});
  final String labelText;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      child: TextField(
        showCursor: false,
        keyboardType: type,
        style: kInputTextStyle,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15.0),
          filled: true,
          fillColor: kInputTextColorGray,
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
