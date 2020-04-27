import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({
    @required this.fillColor,
    @required this.labelText,
    @required this.onPressed,
    @required this.icon,
  });

  final Color fillColor;
  final Function onPressed;
  final String labelText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 50.0, width: 200.0),
      fillColor: fillColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 18.0,
          ),
          Text(
            labelText,
            style: Theme.of(context).textTheme.button,
          ),
        ],
      ),
    );
  }
}
