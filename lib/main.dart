import 'package:biblio/constants.dart';
import 'package:biblio/widgets/rounded_button.dart';
import 'package:biblio/widgets/rounded_icon_button.dart';
import 'package:biblio/widgets/rounded_input_phone.dart';
import 'package:biblio/widgets/rounded_input_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(Components());

class Components extends StatefulWidget {
  @override
  _ComponentsState createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Botões',
                style: kHeaderTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RoundedButton(
                    labelText: 'Login',
                    fillColor: kButtonColorBlue,
                    onPressed: () {},
                  ),
                  RoundedButton(
                    labelText: 'Cadastrar-se',
                    fillColor: kButtonColorGray,
                    onPressed: () {},
                  ),
                ],
              ),
              RoundedIconButton(
                labelText: 'Overview',
                fillColor: kButtonColorBlue,
                icon: FontAwesomeIcons.home,
                onPressed: () {},
              ),
              Text(
                'Inputs',
                style: kHeaderTextStyle,
              ),
              RoundedInputText(
                  labelText: 'Email', type: TextInputType.emailAddress),
              RoundedInputPhone(),
            ],
          ),
        ),
      ),
    );
  }
}
