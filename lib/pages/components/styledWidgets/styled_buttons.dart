// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_texts.dart';

import '../../../services/constrants.dart';

Widget registerBtn(BuildContext context, String text, Function doSomething) {
  return ElevatedButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(4),
      backgroundColor: MaterialStateProperty.all(whiteColor),
      foregroundColor: MaterialStateProperty.all(cyan),
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
        color: cyan,
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
    Color color = whiteColor,
    Color back = cyan,
    double cheight = 33.0}) {
  return ElevatedButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(elevation),
      backgroundColor: MaterialStateProperty.all(back),
      foregroundColor: MaterialStateProperty.all(color),
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

Widget textBtn(
  BuildContext context,
  String text,
  Function doSomething, {
  double size = 16.0,
}) {
  return TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(whiteColor),
    ),
    onPressed: () {
      doSomething();
    },
    child: Text(
      text,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        height: 1.5,
        fontFamily: 'NotoBold',
        fontSize: size,
        decoration: TextDecoration.underline,
      ),
    ),
  );
}

Widget outlineText(BuildContext context, String text, Function doSomething,
    {double top = 7.0, double right = 14.0, double size = 14.0}) {
  return TextButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      foregroundColor: MaterialStateProperty.all(primaryBlue),
      side: MaterialStateProperty.all(
        const BorderSide(color: primaryBlue, width: 1),
      ),
      padding: MaterialStateProperty.all(
          EdgeInsets.fromLTRB(right, top, right, top)),
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

Widget btnsGroup(BuildContext context, String btn1, String btn2) {
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    width: width,
    child: Row(
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size.zero),
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(cyan),
                foregroundColor: MaterialStateProperty.all(whiteColor),
                padding:
                    MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 6, 50, 6)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: customText(context, btn2, 11, false, whiteColor)),
        ),
        Expanded(
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size.zero),
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(whiteColor),
                foregroundColor: MaterialStateProperty.all(primaryBlue),
                padding:
                    MaterialStateProperty.all(EdgeInsets.fromLTRB(49, 6, 49, 6)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: customText(context, btn1, 11, false, primaryBlue)),
        ),
      ],
    ),
  );
}
