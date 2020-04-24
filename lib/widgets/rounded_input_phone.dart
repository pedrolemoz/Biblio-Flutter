import 'package:biblio/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputPhone extends StatelessWidget {
  // TODO: Implementar o controller do text field

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          child: TextField(
            style: kInputCountryCodeTextStyle,
            showCursor: false,
            textAlign: TextAlign.justify,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 15.0),
              filled: true,
              fillColor: kInputTextColorBlue,
              hintText: '+55',
              hintStyle: kInputCountryCodeTextStyle,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  bottomLeft: Radius.circular(4.0),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 200.0,
          height: 50.0,
          child: TextField(
            showCursor: false,
            keyboardType: TextInputType.number,
            style: kInputTextStyle,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 15.0),
              filled: true,
              fillColor: kInputTextColorGray,
              hintText: 'Telefone',
              hintStyle: kHintTextStyle,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.0),
                  bottomRight: Radius.circular(4.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
