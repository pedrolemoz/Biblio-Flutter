import 'package:biblio/constants.dart';
import 'package:biblio/screens/insert_code_bottom_sheet.dart';
import 'package:biblio/widgets/rounded_button.dart';
import 'package:biblio/widgets/rounded_input_text.dart';
import 'package:flutter/material.dart';

class RecoverPasswordBottomSheet extends StatefulWidget {
  @override
  _RecoverPasswordBottomSheetState createState() =>
      _RecoverPasswordBottomSheetState();
}

class _RecoverPasswordBottomSheetState
    extends State<RecoverPasswordBottomSheet> {
  final TextEditingController _recoverEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Enviaremos um código para você',
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: kTextDarkColor),
          ),
          SizedBox(height: 20.0),
          RoundedInputText(
            controller: _recoverEmailController,
            labelText: 'E-mail',
            type: TextInputType.emailAddress,
            isPassword: false,
          ),
          SizedBox(height: 10.0),
          RoundedButton(
            labelText: 'Enviar código',
            fillColor: Theme.of(context).primaryColor,
            onPressed: () {
              print(_recoverEmailController.text);
              showModalBottomSheet(
                context: context,
                builder: (context) => InsertCodeBottomSheet(),
              );
            },
          ),
        ],
      ),
    );
  }
}
