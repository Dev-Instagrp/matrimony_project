import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController employeeNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController userAgeController = TextEditingController();
  TextEditingController userMobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  TextEditingController castController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController subcastController = TextEditingController();
  TextEditingController rasController = TextEditingController();
  TextEditingController ganController = TextEditingController();
  TextEditingController devakController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();

  var selectedOption = 'Select option'.obs;

  void updateSelectedOption(String newValue) {
    selectedOption.value = newValue;
  }

  @override
  void dispose() {
    employeeNameController.dispose();
    userNameController.dispose();
    mobileNumberController.dispose();
    emailController.dispose();
    userAgeController.dispose();
    addressController.dispose();
    qualificationController.dispose();
    jobController.dispose();
    userMobileNumberController.dispose();
    castController.dispose();
    subcastController.dispose();
    rasController.dispose();
    ganController.dispose();
    devakController.dispose();
    birthDateController.dispose();
    bloodGroupController.dispose();
    super.dispose();
  }
}
