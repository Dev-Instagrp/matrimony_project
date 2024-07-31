import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/config/colors.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 50,
        height: 50,
        textStyle: TextStyle(
            color: SysColor.tileColor
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black)
        )
    );
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
            border: Border.all(
                color: SysColor.tileColor
            ),
            borderRadius: BorderRadius.circular(15)
        ),
      ),
      onCompleted: (pin) => debugPrint(pin),
    );
  }
}
