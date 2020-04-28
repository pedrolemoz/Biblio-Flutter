import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    @required this.fillColor,
    @required this.labelText,
    @required this.onPressed,
  });

  final Color fillColor;
  final Function onPressed;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 50.0),
      fillColor: fillColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(labelText, style: Theme.of(context).textTheme.button),
    );
  }
}
