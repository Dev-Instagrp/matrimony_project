import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../config/colors.dart';
import '../../config/utils.dart'; // for date formatting

class DateInputField extends StatefulWidget {
  final String labelText;
  final IconData leadingIcon;
  final TextEditingController controller;

  DateInputField({required this.labelText, required this.leadingIcon, required this.controller});

  @override
  _DateInputFieldState createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2101),
        );

        if (pickedDate != null) {
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          setState(() {
            widget.controller.text = formattedDate;
          });
        }
      },
      child: AbsorbPointer(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(Dimensions.widgetRadius)
          ),
          child: TextFormField(
            controller: widget.controller,
            decoration: InputDecoration(
              labelText: widget.labelText,
              border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(Dimensions.widgetRadius),
                  borderSide: BorderSide(
                      color:SysColor.secBackColor
                  )
              ),
              prefixIcon: Icon(widget.leadingIcon,color: Colors.black54, size: Dimensions.iconDimensions,)
            ),
          ),
        ),
      ),
    );
  }
}
