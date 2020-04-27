import 'package:biblio/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputPhone extends StatelessWidget {
  RoundedInputPhone(
      {@required this.numberController, @required this.countryCodeController});

  final TextEditingController numberController;
  final TextEditingController countryCodeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          child: TextField(
            controller: countryCodeController,
            style: kInputCountryCodeTextStyle,
            showCursor: false,
            textAlign: TextAlign.justify,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 15.0),
              filled: true,
              fillColor: Theme.of(context).primaryColorDark,
              hintText: '+55',
              hintStyle: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Colors.grey),
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
            controller: numberController,
            showCursor: false,
            keyboardType: TextInputType.number,
            style: kInputTextStyle,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 15.0),
              filled: true,
              fillColor: kBackgroundGreyColor,
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
