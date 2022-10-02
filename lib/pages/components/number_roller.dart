import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../services/constrants.dart';

class NumberRoller extends StatefulWidget {
  const NumberRoller({Key? key}) : super(key: key);

  @override
  State<NumberRoller> createState() => _NumberRollerState();
}

class _NumberRollerState extends State<NumberRoller> {
  int _currentValue = 3;

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      value: _currentValue,
      minValue: 0,
      maxValue: 100,
      itemHeight: 20,
      textStyle: const TextStyle(
          fontSize: 15,
          color: Color.fromARGB(143, 112, 112, 112),
          fontFamily: 'NotoBold'),
      selectedTextStyle: const TextStyle(
          fontSize: 17,
          fontFamily: 'NotoBold',
          color: secondaryGray,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline),
      onChanged: (value) => setState(() => _currentValue = value),
    );
  }
}
