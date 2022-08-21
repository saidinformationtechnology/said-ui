// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_texts.dart';

Widget registerBtn(BuildContext context, String text, Function doSomething) {
  return ElevatedButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(4),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      foregroundColor:
          MaterialStateProperty.all(const Color.fromRGBO(50, 185, 215, 1)),
      padding:
          MaterialStateProperty.all(const EdgeInsets.fromLTRB(22, 9, 22, 10)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    ),
    onPressed: () {
      doSomething();
    },
    child: Text(
      text,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'NotoBold',
        color: Color.fromRGBO(50, 185, 215, 1),
      ),
    ),
  );
}

Widget nextBtn(BuildContext context, String text, Function doSomething,
    {double elevation = 0.0,
    double right = 31.0,
    double top = 9.0,
    double circular = 11.0,
    double size = 16.0,
    int color = 0xFFFFFFFF,
    double cheight = 33.0}) {
  return ElevatedButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(elevation),
      backgroundColor:
          MaterialStateProperty.all(Color.fromRGBO(50, 185, 215, 1)),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      padding: MaterialStateProperty.all(
          EdgeInsets.fromLTRB(right, top, right, top)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circular),
        ),
      ),
    ),
    onPressed: () {
      doSomething();
    },
    child: Container(
        height: cheight,
        width: double.infinity,
        alignment: Alignment.center,
        child: customText(context, text, size, false, color)),
  );
}

Widget textBtn(BuildContext context, String text, Function doSomething) {
  return TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    onPressed: () {
      doSomething();
    },
    child: Text(
      text,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        height: 1.5,
        fontFamily: 'NotoBold',
        fontSize: 16,
        decoration: TextDecoration.underline,
      ),
    ),
  );
}

Widget outlineText(BuildContext context, String text, Function doSomething, {
  double top = 7.0,
  double right = 14.0,
  double size = 14.0
}) {
  return TextButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      foregroundColor: MaterialStateProperty.all(const Color(0xFF0268B2)),
      side: MaterialStateProperty.all(
        const BorderSide(color: Color(0xFF0268B2), width: 1),
      ),
      padding:
          MaterialStateProperty.all(EdgeInsets.fromLTRB(right, top, right, top)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ),
    onPressed: () {
      doSomething();
    },
    child: Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'NotoBold',
      ),
      textDirection: TextDirection.rtl,
    ),
  );
}
