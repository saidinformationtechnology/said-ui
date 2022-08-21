// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'styled_container.dart';

Widget inputField(BuildContext context, {String placeholder = '',
  TextInputType type = TextInputType.text,
  TextInputAction action = TextInputAction.next,
  double top =  5.0, double bottom = 0.0,
  double width = double.infinity, height = 31.0, round = 7.0, border = true, double size= 13.0,
  bool shadow = true,
  int color = 0xFFFFFFFF,
  double fontsize = 12.0,
  int max = 1,
}) {
  bool value = false;
  if (placeholder != '') {
    value = true;
  }
  return CustomContainer(
    width: width,
    height: height,
    round: round,
    border: border,
    shadow: shadow,
    color: color,
    child: TextField(
      style: TextStyle(
        fontFamily: 'NotoBold',
        color: Color(0xFF0268B2),
        fontWeight: FontWeight.bold,
        fontSize: fontsize,
      ),
      maxLines: max,
      textAlign: TextAlign.end,
      textInputAction: action,
      keyboardType:type,
      decoration: InputDecoration(
        isDense: true, // Added this
        contentPadding: EdgeInsets.only(
            bottom: bottom, top: top, left: 7, right: 8), // Added this
        hintText: value?placeholder:null,
        hintStyle: TextStyle(
            fontFamily: 'NotoBold', color: Colors.grey.shade500, fontSize: size),
        border: InputBorder.none,
      ),
    ),
  );
}

Widget numberInputField(BuildContext context) {
  return Container(
    width: 60,
    height: 32,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: const [
        BoxShadow(
          blurRadius: 3,
          color: Color(0x33000000),
          offset: Offset(0, 1),
        ),
      ],
    ),
    child: const TextField(
      style: TextStyle(
        fontSize: 13,
        color: Color(0xFF0268B2),
      ),
      textAlign: TextAlign.center,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(bottom: 15),
      ),
    ),
  );
}
