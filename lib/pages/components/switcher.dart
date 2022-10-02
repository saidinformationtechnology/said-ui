// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors

import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/material.dart';

import '../../services/constrants.dart';

class MySwitcher extends StatefulWidget {
  const MySwitcher({Key? key}) : super(key: key);

  @override
  State<MySwitcher> createState() => _MySwitcherState();
}

class _MySwitcherState extends State<MySwitcher> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: CustomSwitchButton(
        indicatorWidth: 9,
        buttonWidth: 35,
        buttonHeight: 16,
        indicatorBorderRadius: 40,
        backgroundColor: Colors.grey[400],
        unCheckedColor: Colors.grey[200],
        animationDuration: Duration(milliseconds: 520),
        checkedColor: primaryBlue,
        checked: isChecked,
      ),
    );
  }
}
