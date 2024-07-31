import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';
import '../../../components/Inputs/drop_down.dart';
import '../../../components/Inputs/text_input.dart';
import '../../../controller/auth_controller.dart';

class CreateUserId extends StatelessWidget {
  CreateUserId({super.key});

  final AuthController controller = Get.put(AuthController());
  final List<DropdownItem> dropDownItems = [
    DropdownItem(value: 'Select option', label: 'Select option'),
    DropdownItem(value: 'Female', label: 'Female', icon: Icons.woman),
    DropdownItem(value: 'Male', label: 'Male', icon: Icons.person),
  ];
  final RxString selectedDropdownItem = 'Select option'.obs;


  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black12,
                child: Image(image: AssetImage('assets/images/details.png'),),
              ),
              Text('Create User ID',style: FontStyles.bodyText,),
              Text('This ID will get created Automatically!',style: FontStyles.bodyText,),
              Dimensions.spacer40,
              TextInput(
                labelText: 'Enter Name',
                leadingIcon: Icons.person_pin_outlined,
                controller: controller.userNameController,
              ),Dimensions.spacer40,
              Container(
                width: 300,
                child: DropDown(
                  dropDownItems: dropDownItems,
                  selectedDropdownItem: selectedDropdownItem,
                  onChanged: (value) {
                    if (value != null) {
                      selectedDropdownItem.value = value;
                    }
                  },
                  controller: TextEditingController(),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
