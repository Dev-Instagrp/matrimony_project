import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/Inputs/text_input.dart';
import '../../../config/utils.dart';
import '../../../controller/auth_controller.dart';

class UsersAdditionalDetails extends StatelessWidget {
  UsersAdditionalDetails({super.key});


  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // Ensure the container has constraints
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black12,
            child: Image(image: AssetImage('assets/images/details.png'),),
          ),
          Text('Enter Following Details',style: FontStyles.bodyText,),
          SizedBox(width: 50),Dimensions.spacer40,
          Row(
            children: [
              Expanded(
                child: TextInput(
                  labelText: 'Cast',
                  leadingIcon: Icons.cases_outlined,
                  controller: controller.castController,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextInput(
                  labelText: 'Sub-cast',
                  leadingIcon: Icons.call_to_action_sharp,
                  controller: controller.subcastController,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextInput(
                  labelText: 'Devak',
                  leadingIcon: Icons.golf_course,
                  controller: controller.devakController,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextInput(
                  labelText: 'Ras',
                  leadingIcon: Icons.radar,
                  controller: controller.rasController,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextInput(
                  labelText: 'Gan',
                  leadingIcon: Icons.radio_button_checked,
                  controller: controller.ganController,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextInput(
                  labelText: 'Blood Gruop',
                  leadingIcon: Icons.bloodtype,
                  controller: controller.bloodGroupController,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 700,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFebedee),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                textAlign: TextAlign.justify,
               decoration: InputDecoration(
                 hintText: "Demands",
                 border: InputBorder.none, // Remove the underline
                 contentPadding: EdgeInsets.all(16),
               ),
                maxLines: null, // Allow multiline input
                keyboardType: TextInputType.multiline,
              ),
          )
        ],
      ),
    );
  }
}
