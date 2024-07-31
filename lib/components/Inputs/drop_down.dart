import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDown extends StatelessWidget {
  final List<DropdownItem> dropDownItems;
  final RxString selectedDropdownItem;
  final Function(String?) onChanged;
  final TextEditingController controller;

  DropDown({
    required this.dropDownItems,
    required this.selectedDropdownItem,
    required this.onChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedDropdownItem.value,
            onChanged: onChanged,
            icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
            isExpanded: true,
            items: dropDownItems.map<DropdownMenuItem<String>>((DropdownItem item) {
              return DropdownMenuItem<String>(
                value: item.value,
                child: Row(
                  children: [
                    item.icon != null ? Icon(item.icon, color: Colors.grey) : Container(),
                    SizedBox(width: item.icon != null ? 8.0 : 0),
                    Text(item.label),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class DropdownItem {
  final String value;
  final String label;
  final IconData? icon;

  DropdownItem({
    required this.value,
    required this.label,
    this.icon,
  });
}
