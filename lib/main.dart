import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/registration_screen.dart';
import 'package:matrimony_bright_weddings/view/UserDashboard/user_dashboard_screen.dart';
import 'config/colors.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: SysColor.tileColor)
      ),
      home:UserDashboardScreen(),
    );
  }
}
