import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/components/Views/auto_scroll_view.dart';
import 'package:matrimony_bright_weddings/components/Views/circle_component.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import 'package:matrimony_bright_weddings/view/LoginScreen/login_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 1220,
                  height: 500,
                  child: Image.asset(
                    'assets/images/handsPic.jpg', // Replace with your asset path
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.black.withOpacity(0.5),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Bright Weddings", style: FontStyles.heading),
                        SizedBox(height: 10),
                        Text(
                          "The No.1 Matchmaking Service",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Body',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(70),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              textAlign: TextAlign.center,
                              'Meet your soulmate through our trusted platform!',
                              textStyle: FontStyles.welcomeText,
                              speed: Duration(milliseconds: 100),
                            ),
                          ],
                          repeatForever: true,
                        ),
                      ),
                    ],
                  ),
                  Dimensions.spacer100,
                  AutoScrollView(
                    duration: Duration(seconds: 10),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleComponent(
                          icon: Icons.login,
                          title: 'Login',
                          subtitle: 'Login & put up your Matrimony Profile',
                          stepNumber: 1,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                          },
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CircleComponent(
                          icon: Icons.app_registration,
                          title: 'Register User',
                          subtitle: 'Register user & create new profile',
                          stepNumber: 2,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                          },
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CircleComponent(
                          icon: Icons.person_search_outlined,
                          title: 'Match Profiles',
                          subtitle: 'Select and share the profiles',
                          stepNumber: 3,
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CircleComponent(
                          icon: Icons.supervisor_account,
                          title: 'Success Stories',
                          subtitle:
                          'Empowering connections that last a lifetime ',
                          stepNumber: 4,
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CircleComponent(
                          icon: Icons.help_outline,
                          title: 'Help Center',
                          subtitle: 'Click here to connect with Admin',
                          stepNumber: 5,
                          onTap: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
