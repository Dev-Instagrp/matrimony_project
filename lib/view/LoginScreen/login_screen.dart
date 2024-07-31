import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:matrimony_bright_weddings/components/Alerts/alert_box.dart';
import 'package:matrimony_bright_weddings/components/Buttons/submit_button.dart';
import 'package:matrimony_bright_weddings/components/Inputs/text_input.dart';
import 'package:matrimony_bright_weddings/config/colors.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import 'package:matrimony_bright_weddings/controller/auth_controller.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthController controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Lottie.asset('assets/animations/background.json',
                fit: BoxFit.cover),
          ),
          BlurryContainer(
              child: Center(
            child: Container(
                width: 1015,
                height: 550,
                decoration: BoxDecoration(color: Colors.black12),
                child: Row(
                  children: [
                    Container(
                        height: 550,
                        width: 500,
                        margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE9EEFA),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset(
                              'assets/animations/login.json',
                              width: 350,
                              height: 350,
                              repeat: true, // Optional: Set animation to repeat
                            ),
                            DefaultTextStyle(
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'style1',
                                  color: SysColor.redColor),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText('Only True Peoples!',
                                      speed: Duration(milliseconds: 100)),
                                ],
                                onTap: () {
                                  print("Tap Event");
                                },
                                repeatForever: true,
                              ),
                            ),
                          ],
                        )),
                    Container(
                      height: 550,
                      width: 500,
                      margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 80, right: 80),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/logo.png'),
                              width: 700,
                              height: 150,
                            ),
                            Text(
                              " Perfect Matches",
                              style: FontStyles.titleStyle,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Welcome to Bright Weddings",
                              style: FontStyles.subTitleStyle,
                              textAlign: TextAlign.center,
                            ),
                            Dimensions.spacer50,
                            TextInput(
                                labelText: 'Enter Name',
                                leadingIcon: Icons.person,
                                controller: controller.employeeNameController),
                            Dimensions.spacer40,
                            TextInput(
                                labelText: 'Enter Mobile Number',
                                leadingIcon: Icons.phone_android,
                                controller: controller.mobileNumberController),
                            Dimensions.spacer50,
                            SubmitButton(
                              onTap: () {
                                AlertBox.showOtpAlert(
                                    context, 'Enter OTP', 'Submit', () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationScreen()));
                                });
                              },
                              title: 'Get OTP',
                              buttonHeight: 50,
                              buttonWidth: 170,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          )),
        ],
      ),
    );
  }
}
