import 'package:flutter/material.dart';


class UserInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  UserInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey),
        SizedBox(width: 10),
        Text(text, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}