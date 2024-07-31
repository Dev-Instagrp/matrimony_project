import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrimony_bright_weddings/components/Buttons/submit_button.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import '../../components/Inputs/filter_options.dart';
import '../../components/UserDashboard/header.dart';
import '../../components/UserDashboard/side_bar.dart';
import '../../components/UserDashboard/user_card.dart';
import '../../controller/auth_controller.dart';

class UserDashboardScreen extends StatelessWidget {
  UserDashboardScreen({super.key});

  final AuthController controller = Get.put(AuthController());

  void _showFilterOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FilterOptions(), // Use the new FilterOptions component
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Sidebar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 70,
                          child: Image(image: AssetImage('assets/images/logo.png')),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Bright Weddings',
                          style: FontStyles.titleStyle.copyWith(fontSize: 50),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text('Home', style: FontStyles.bodyText),
                        ),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          child: Text('About', style: FontStyles.bodyText),
                        ),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          child: Text('Contact', style: FontStyles.bodyText),
                        ),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          child: Text('New Registration', style: FontStyles.bodyText),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Here are the detailed profiles to help you find the one.',
                            style: FontStyles.normalText.copyWith(fontSize: 16),
                          ),
                          Text(
                            'Click on a profile to view detailed information. '
                                'Use the filters to refine your search and find ideal partner.',
                            style: FontStyles.normalText.copyWith(fontSize: 16),
                          ),
                          Text(
                            'Review each profile thoroughly to understand their preferences and background.',
                            style: FontStyles.bodyText.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 500,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search profiles...',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: SubmitButton(
                            onTap: () => _showFilterOptions(context),
                            title: 'Apply Filter',
                            buttonHeight: 45,
                            buttonWidth: 150,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Header(),
                    SizedBox(height: 20),
                    GridView.builder(
                      padding: EdgeInsets.all(16.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 3 / 4,
                      ),
                      itemBuilder: (context, index) {
                        return UserCard();
                      },
                      itemCount: 9,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





