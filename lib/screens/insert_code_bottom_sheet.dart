import 'package:biblio/constants.dart';
import 'package:biblio/widgets/rounded_button.dart';
import 'package:biblio/widgets/rounded_input_text.dart';
import 'package:flutter/material.dart';

class InsertCodeBottomSheet extends StatefulWidget {
  @override
  _InsertCodeBottomSheetState createState() => _InsertCodeBottomSheetState();
}

class _InsertCodeBottomSheetState extends State<InsertCodeBottomSheet> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Insira o código recebido',
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: kTextDarkColor),
          ),
          SizedBox(height: 20.0),
          RoundedInputText(
            controller: _codeController,
            labelText: 'Código de verificação',
            type: TextInputType.text,
            isPassword: false,
          ),
          SizedBox(height: 10.0),
          RoundedButton(
            labelText: 'Verificar',
            fillColor: Theme.of(context).primaryColor,
            onPressed: () {
              print(_codeController.text);
            },
          ),
        ],
      ),
    );
  }
}
