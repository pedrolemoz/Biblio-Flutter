import 'package:biblio/screens/recover_password_bottom_sheet.dart';
import 'package:biblio/screens/registration_screen.dart';
import 'package:biblio/widgets/rounded_button.dart';
import 'package:biblio/widgets/rounded_input_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static final String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Bem vindo de volta!',
                      style: Theme.of(context).textTheme.display1,
                    ),
                    SizedBox(height: 20.0),
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
                      labelText: 'Login',
                      fillColor: Theme.of(context).accentColor,
                      onPressed: () {
                        print(_emailController.text);
                        print(_passwordController.text);
                      },
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: RoundedButton(
                            fillColor: Theme.of(context).primaryColorDark,
                            labelText: 'Não possui cadastro?',
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RegistrationScreen.id,
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Expanded(
                          child: RoundedButton(
                            fillColor: Theme.of(context).primaryColorDark,
                            labelText: 'Esqueceu a senha?',
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) =>
                                    RecoverPasswordBottomSheet(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
