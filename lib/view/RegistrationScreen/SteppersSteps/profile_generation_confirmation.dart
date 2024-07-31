import 'package:flutter/material.dart';

class ProfileGenerationConfirmation extends StatelessWidget {
  const ProfileGenerationConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Colors.transparent,
        child: Image(image: AssetImage('assets/images/confirm.png'),),
      ),
    );
  }
}
