import 'dart:ui';

import 'package:biblio/constants.dart';
import 'package:biblio/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static final String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Image.asset('assets/1.png')),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Quer livros e artigos de graça? Bibl.io',
                          style: kHeaderTextStyle,
                        ),
                        SizedBox(height: 20.0),
                        RoundedButton(
                          fillColor: kButtonColorBlue,
                          labelText: 'Entrar',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ver livros e artigos disponíveis',
                        style: kSecondaryTextStyle,
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RoundedButton(
                              fillColor: kButtonColorGray,
                              labelText: 'Ver livros',
                              onPressed: () {}),
                          RoundedButton(
                              fillColor: kButtonColorGray,
                              labelText: 'Ver artigos',
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
