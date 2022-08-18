// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFADEEFE),
      child: DropdownButton<String>(
        elevation: 0,
        style: TextStyle(
          fontFamily: 'NotoBold',
          fontSize: 11,
          fontWeight: FontWeight.w800,
          color: Color(0xFF0268B2),
        ),
        // isExpanded: true,
        isDense: true,
        dropdownColor: Color(0xFFADEEFE),
        iconEnabledColor: Color(0xFF0268B2),
        hint: Text(
          'اختر طريقة الدفع',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: 'NotoBold',
            fontSize: 13,
            fontWeight: FontWeight.w800,
            color: Color(0xFF0268B2),
          ),
        ),
        items: <String>['مدى', 'فيزا', 'ماستر كارد'].map((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.centerRight,
            value: value,
            child: TextButton(
              child: Text(value,
                  style: TextStyle(
                    fontFamily: 'NotoBold',
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF0268B2),
                  )),
              onPressed: () {
                Navigator.pushNamed(context, '/addCard');
              },
            ),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
