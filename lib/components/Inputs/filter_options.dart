import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/components/Buttons/submit_button.dart';
import 'package:matrimony_bright_weddings/config/colors.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';

class FilterOptions extends StatefulWidget {
  @override
  _FilterOptionsState createState() => _FilterOptionsState();
}

class _FilterOptionsState extends State<FilterOptions> {
  RangeValues ageRange = RangeValues(20, 40);
  final TextEditingController casteController = TextEditingController();
  final TextEditingController qualificationController = TextEditingController();

  void _resetFilters() {
    setState(() {
      ageRange = RangeValues(20, 40);
      casteController.clear();
      qualificationController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Filters', style: FontStyles.subTitleStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 24)),
                Row(
                  children: [
                    TextButton(onPressed: _resetFilters, child: Text('Reset')),
                    IconButton(
                      icon: Icon(Icons.cancel,color: SysColor.redColor,),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Text('Caste', style: FontStyles.bodyText),
            Container(
              width: 300,
              child: TextFormField(
                controller: casteController,
                decoration: InputDecoration(
                  hintText: 'Enter Caste',
                ),
              ),
            ),
            Dimensions.spacer40,
            Text('Age Range', style: FontStyles.bodyText),
            RangeSlider(
              values: ageRange,
              min: 18,
              max: 70,
              divisions: 52,
              labels: RangeLabels(
                '${ageRange.start.round()}',
                '${ageRange.end.round()}',
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  ageRange = values;
                });
              },
            ),
            Text('Qualification', style: FontStyles.bodyText),
            Container(
              width: 300,
              child: TextFormField(
                controller: qualificationController,
                decoration: InputDecoration(
                  hintText: 'Enter Qualification',
                ),
              ),
            ),
            Dimensions.spacer40,
            Center(
              child: SubmitButton(
                buttonColor: SysColor.tileColor,
                onTap: () {
                  // Apply filter logic here
                  Navigator.pop(context);
                },
                title: 'Apply Filters',
                buttonHeight: 45,
                buttonWidth: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
