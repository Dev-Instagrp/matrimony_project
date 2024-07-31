import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/utils.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final double buttonHeight;
  final double buttonWidth;
  final Color? buttonColor; // Make this nullable

  const SubmitButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.buttonHeight,
    required this.buttonWidth,
    this.buttonColor, // Nullable parameter
  });

  @override
  Widget build(BuildContext context) {
    // Use SysColor.redColor as fallback if buttonColor is null
    final color = buttonColor ?? SysColor.redColor;

    return InkWell(
      onTap: onTap,
      splashFactory: InkRipple.splashFactory,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color, // Use the color parameter
            borderRadius: BorderRadius.circular(Dimensions.widgetRadius)),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
