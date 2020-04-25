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
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
    );
  }
}
