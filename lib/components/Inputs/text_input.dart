import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/config/colors.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';

class TextInput extends StatelessWidget {

  final String labelText;
  final IconData leadingIcon;
  final TextEditingController controller;


  TextInput({super.key, required this.labelText, required this.leadingIcon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(Dimensions.widgetRadius)
      ),
      child: TextFormField(
        decoration: InputDecoration(
        labelText: labelText,
          border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(Dimensions.widgetRadius),
            borderSide: BorderSide(
              color:SysColor.secBackColor
            )
          ),
          prefixIcon:Icon(leadingIcon, color: Colors.black54, size: Dimensions.iconDimensions,)
        ),
      ),
    );
  }
}
