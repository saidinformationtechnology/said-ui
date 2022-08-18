import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.all(const Color(0xFF0268B2)),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
