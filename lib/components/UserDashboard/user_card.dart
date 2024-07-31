import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/components/UserDashboard/user_info.dart';

class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'Wesley Ward',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Admin',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            UserInfo(icon: Icons.email, text: 'wesley@gmail.com'),
            UserInfo(icon: Icons.calendar_today, text: 'Registration: Sep 25, 2017'),
            UserInfo(icon: Icons.work, text: 'Graphic Designer'),
            UserInfo(icon: Icons.location_on, text: 'USA, Chicago'),
          ],
        ),
      ),
    );
  }
}