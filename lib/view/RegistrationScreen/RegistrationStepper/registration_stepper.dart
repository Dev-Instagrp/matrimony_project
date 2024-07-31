import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matrimony_bright_weddings/controller/auth_controller.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/SteppersSteps/create_user_id.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/SteppersSteps/profile_generation_confirmation.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/SteppersSteps/users_additional_details.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/SteppersSteps/users_personal_information.dart';
import 'package:matrimony_bright_weddings/view/RegistrationScreen/SteppersSteps/users_professional_information.dart';
import 'package:matrimony_bright_weddings/components/Animation/confirmation_animation.dart';

class RegistrationStepper extends StatefulWidget {
  @override
  _RegistrationStepperState createState() => _RegistrationStepperState();
}

class _RegistrationStepperState extends State<RegistrationStepper> {
  int currentStep = 0;

  final AuthController controller = Get.put(AuthController());
  List<StepState> stepStates = [];

  @override
  void initState() {
    super.initState();
    // Initialize all steps as indexed (not complete)
    stepStates = List.generate(5, (index) => StepState.indexed);
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      physics: ClampingScrollPhysics(),
      currentStep: currentStep,
      onStepContinue: () {
        setState(() {
          if (currentStep < 4) {
            // Mark current step as complete
            stepStates[currentStep] = StepState.complete;
            currentStep += 1;
          } else {
            // Handle completion logic here (e.g., show confirmation dialog)
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return ConfirmationAnimation();
              },
            );
          }
        });
      },
      onStepTapped: (step) {
        setState(() {
          currentStep = step;
        });
      },
      onStepCancel: currentStep > 0 ? () {
        setState(() {
          currentStep -= 1;
        });
      } : null,
      steps: [
        Step(
          title: Text('Create ID'),
          state: stepStates[0],
          isActive: true,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CreateUserId(),
            ],
          ),
        ),
        Step(
          title: Text('Personal'),
          state: stepStates[1],
          isActive: true,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PersonalInformationCard(selectedType: controller.selectedOption.value),
            ],
          ),
        ),
        Step(
          title: Text('Professional'),
          state: stepStates[2],
          isActive: true,
          content: Column(
            children: [
              UsersProfessionalInformation(),
            ],
          ),
        ),
        Step(
          title: Text('Additional Details'),
          state: stepStates[3],
          isActive: true,
          content: Column(
            children: [
              UsersAdditionalDetails(),
            ],
          ),
        ),
        Step(
          title: Text('Complete'),
          state: stepStates[4],
          isActive: true,
          content: Column(
            children: [
              ProfileGenerationConfirmation(),
            ],
          ),
        ),
      ],
      controlsBuilder: (context, details) => Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                onPressed: details.onStepContinue,
                child: Text(currentStep == 4 ? 'Confirm' : 'Next',
                  style: TextStyle(fontSize: 16, color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFED4487)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            if (currentStep > 0) ...[
              SizedBox(width: 20),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  onPressed: details.onStepCancel,
                  child: const Text('Back',
                    style: TextStyle(fontSize: 16,color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFED4487)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
