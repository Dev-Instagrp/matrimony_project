import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import '../../../components/Inputs/text_input.dart';
import '../../../controller/auth_controller.dart';

class UsersProfessionalInformation extends StatelessWidget {
  UsersProfessionalInformation({super.key});

  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black12,
                child: Image(image: AssetImage('assets/images/qualification.png'),),
              ),
              Text('Professional Details',style: FontStyles.bodyText,),
              Dimensions.spacer40,
              TextInput(
                labelText: 'Qualification',
                leadingIcon: Icons.star_outline,
                controller: controller.qualificationController,
              ),
              Dimensions.spacer40,
              TextInput(
                labelText: 'Job',
                leadingIcon: Icons.add_chart_sharp,
                controller: controller.jobController,
              ),
              Dimensions.spacer40,
              TextInput(
                labelText: 'Email ID',
                leadingIcon: Icons.email_outlined,
                controller: controller.emailController,
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
