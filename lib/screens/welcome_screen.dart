import 'dart:ui';
import 'package:biblio/screens/login_screen.dart';
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColorLight,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Image.asset('assets/welcome.png'),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Quer livros e artigos de graça? Bibl.io',
                        style: Theme.of(context).textTheme.display1,
                      ),
                      SizedBox(height: 20.0),
                      RoundedButton(
                        fillColor: Theme.of(context).accentColor,
                        labelText: 'Entrar',
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ver livros e artigos disponíveis',
                        style: Theme.of(context).textTheme.headline,
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: RoundedButton(
                                fillColor: Theme.of(context).primaryColorDark,
                                labelText: 'Ver livros',
                                onPressed: () {}),
                          ),
                          SizedBox(width: 15.0),
                          Expanded(
                            child: RoundedButton(
                                fillColor: Theme.of(context).primaryColorDark,
                                labelText: 'Ver artigos',
                                onPressed: () {}),
                          ),
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
