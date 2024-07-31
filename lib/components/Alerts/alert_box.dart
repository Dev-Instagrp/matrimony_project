import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/components/Buttons/submit_button.dart';
import 'package:matrimony_bright_weddings/config/colors.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/registration_screen.dart';

import '../Views/otp_screen.dart'; // Import your RegistrationScreen

class AlertBox {
  static void showOtpAlert(BuildContext context, String title, String buttonText, VoidCallback onTap) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: SysColor.backgroundColor,
          contentPadding: EdgeInsets.zero,
          content: Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: SysColor.highlightColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Dimensions.spacerMin,
                Container(
                  margin: EdgeInsets.only(left: 240),
                  child: IconButton(
                    icon: Icon(Icons.cancel_outlined, color: SysColor.redColor),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                  ),
                ),
                Dimensions.spacerMin,
                Text(
                  title,
                  style: TextStyle(fontFamily: "Body", fontWeight: FontWeight.bold),
                ),
                Dimensions.spacer50,
                OtpScreen(),
                Dimensions.spacer40,
                SubmitButton(
                  onTap: () {
                    onTap();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => RegistrationScreen(),
                      ),
                    );
                  },
                  title: buttonText,
                  buttonHeight: 40,
                  buttonWidth: 120,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
