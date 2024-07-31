import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../view/Profiles/profile_screen.dart';

class ConfirmationAnimation extends StatelessWidget {
  const ConfirmationAnimation({Key? key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent, // Set background color to transparent
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      content: Container(
        width: 300,
        height: 300,
        child: Lottie.asset(
          'assets/animations/confirmation.json',
          repeat: false,
          onLoaded: (composition) {
            Future.delayed(composition.duration, () {
              Navigator.of(context).pop(); // Close the dialog after animation completes
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(), // Navigate to your profile screen
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
