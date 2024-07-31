import 'package:flutter/material.dart';

import 'header_tab.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'System Users',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              HeaderTab(title: 'All', isSelected: true),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.grid_on),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}