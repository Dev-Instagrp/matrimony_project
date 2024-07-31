import 'package:flutter/material.dart';

import 'RegistrationStepper/registration_stepper.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationDialogState createState() => _RegistrationDialogState();
}

class _RegistrationDialogState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      content: Container(
        width: 800,
        height: 550,
        child: RegistrationStepper(),
      ),
    );
  }
}
