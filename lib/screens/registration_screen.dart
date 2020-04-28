import 'package:biblio/widgets/rounded_button.dart';

import 'package:biblio/widgets/rounded_input_text.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static final String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Cadastre-se e explore',
                      style: Theme.of(context).textTheme.display1,
                    ),
                    SizedBox(height: 20.0),
                    RoundedInputText(
                      controller: _nameController,
                      labelText: 'Nome completo',
                      type: TextInputType.text,
                      isPassword: false,
                    ),
                    SizedBox(height: 10.0),
                    RoundedInputText(
                      controller: _emailController,
                      labelText: 'E-mail',
                      type: TextInputType.emailAddress,
                      isPassword: false,
                    ),
                    SizedBox(height: 10.0),
                    RoundedInputText(
                      controller: _passwordController,
                      labelText: 'Senha',
                      type: TextInputType.visiblePassword,
                      isPassword: true,
                    ),
                    SizedBox(height: 10.0),
                    RoundedButton(
                      labelText: 'Cadastrar-se',
                      fillColor: Theme.of(context).accentColor,
                      onPressed: () {
                        print(_nameController.text);
                        print(_emailController.text);
                        print(_passwordController.text);
                      },
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
