import 'package:flutter/material.dart';


class HeaderTab extends StatelessWidget {
  final String title;
  final bool isSelected;

  HeaderTab({required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}