import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrimony_bright_weddings/config/colors.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/registration_form.dart';
import '../../components/cards/image_container.dart';
import '../../controller/auth_controller.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.redAccent.shade200],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Dimensions.spacer100,
                    Container(
                      height: 60,
                      width: 700,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border,
                                    color: SysColor.tileColor),
                                SizedBox(width: 8),
                                Text('Blessed',
                                    style: FontStyles.normalText
                                        .copyWith(fontSize: 16)),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Home', style: FontStyles.bodyText),
                                SizedBox(width: 20),
                                Text('About', style: FontStyles.bodyText),
                                SizedBox(width: 20),
                                Text('Contact', style: FontStyles.bodyText),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text('Best start to your forever journey',
                                style: FontStyles.titleStyle
                                    .copyWith(color: Colors.white)),
                            Dimensions.spacer50,
                            Dimensions.spacerMin,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return RegistrationForm();
                                      },
                                    );
                                  },
                                  child: Text('New Registration'),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.red,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 250),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Already Registered'),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.red,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Dimensions.spacer100,
            Stack(
              children: [
                Positioned(
                  child: Image(
                    image: AssetImage('assets/images/rose.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                               radius: 40,
                               child: Image(image: AssetImage('assets/images/who_we_are.png'),),
                              ),
                              Text(
                                'Who We Are',
                                style: FontStyles.whoWeAreText
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'We are a dedicated team bringing matrimonial solutions to '
                                '\nthe masses in their search for their life partner.'
                                '\nJoin us in transforming your dreams of a perfect partner'
                                '\n into a beautiful reality.',
                            textAlign: TextAlign.center,
                            style: FontStyles.descriptionText
                          ),
                          SizedBox(height: 200),
                          Text(
                            'Personalized Matchmaking',
                            style: FontStyles.whoWeAreText
                          ),
                          SizedBox(height: 20),
                          Text(
                            'We offer customized matchmaking services tailored  '
                                '\nto your preferences and requirements,'
                                '\n ensuring a perfect match.',
                            textAlign: TextAlign.center,
                            style: FontStyles.descriptionText
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          ImageContainer(
                            imagePath: 'assets/images/i.jpg',
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                            ),
                          ),
                          Dimensions.spacer50,
                          ImageContainer(
                            imagePath: 'assets/images/kalas.jpeg',
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Dimensions.spacer100,
                          ImageContainer(
                            imagePath: 'assets/images/fere2.jpg',
                            height: 350,
                            width: 350,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50.0),
                            ),
                          ),
                          Dimensions.spacer50,
                          ImageContainer(
                            imagePath: 'assets/images/handsPic2.jpg',
                            height: 300,
                            width: 350,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
