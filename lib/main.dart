import 'package:biblio/screens/login_screen.dart';
import 'package:biblio/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Components());

class Components extends StatefulWidget {
  @override
  _ComponentsState createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFF3376cc),
        primaryColorDark: Color(0xFF004b9a),
        primaryColorLight: Color(0xFF6fa4ff),
        accentColor: Color(0xFFE93C51),
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.white,
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.normal,
            fontSize: 34.0,
          ),
          headline: TextStyle(
            color: Colors.white,
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.normal,
            fontSize: 24.0,
          ),
          subhead: TextStyle(
            color: Colors.white,
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
          button: TextStyle(
            color: Colors.white,
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
