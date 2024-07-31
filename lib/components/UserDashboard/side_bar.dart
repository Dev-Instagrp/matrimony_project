import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/components/UserDashboard/side_bar_item.dart';

import '../../config/utils.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.blueGrey[900],
      child: Column(
        children: [
          SizedBox(height: 50),
          CircleAvatar(
            radius: 20,child: Icon(Icons.admin_panel_settings_outlined,),
          ),
          SizedBox(height: 10),
          Text(
            'Super Admin',
            style: FontStyles.bodyText.copyWith(color: Colors.white),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                SidebarItem(icon: Icons.dashboard, title: 'Dashboard'),
                SidebarItem(icon: Icons.people, title: 'Users', isSelected: true),
                SidebarItem(icon: Icons.settings, title: 'Settings'),
              ],
            ),
          ),
          SidebarItem(icon: Icons.book_outlined, title: 'Success Records'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}