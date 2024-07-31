import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  SidebarItem({required this.icon, required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Colors.blueGrey[700] : Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {},
      ),
    );
  }
}