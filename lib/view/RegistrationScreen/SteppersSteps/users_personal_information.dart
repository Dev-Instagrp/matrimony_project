import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/components/Inputs/text_input.dart';
import 'package:get/get.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import '../../../components/Inputs/date_input_field.dart';
import '../../../controller/auth_controller.dart';


class PersonalInformationCard extends StatelessWidget {
  final String selectedType;


  PersonalInformationCard({required this.selectedType});

  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // Ensure the container has constraints
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.black12,
                        child: Icon(Icons.image),
                      ),
                      Text('Upload Photo/ Video',style: FontStyles.bodyText,),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.userNameController.text.isNotEmpty
                            ? controller.userNameController.text
                            : "userName",
                        style: FontStyles.bodyText,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Type: $selectedType',
                        style: FontStyles.bodyText,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),Dimensions.spacer40,
          Row(
            children: [
              Expanded(
                child: TextInput(
                  labelText: 'Enter Full Name',
                  leadingIcon: Icons.person_pin_outlined,
                  controller: controller.userNameController,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextInput(
                  labelText: 'Address',
                  leadingIcon: Icons.home,
                  controller: controller.addressController,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: DateInputField(
                  labelText: 'Birthdate',
                  leadingIcon: Icons.date_range,
                  controller: controller.birthDateController,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextInput(
                  labelText: 'Mobile Number',
                  leadingIcon: Icons.phone_android,
                  controller: controller.mobileNumberController,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
