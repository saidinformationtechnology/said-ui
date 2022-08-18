import 'package:flutter/material.dart';

Widget saidLogo(BuildContext context, int color) {
  return Column(
    children: [
      Text(
        'Said Lite',
        style: TextStyle(
          fontFamily: 'ArialRounded',
          fontSize: 40.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(3.0, 2.0),
              blurRadius: 3.0,
              color: Color(color),
            ),
          ],
        ),
      ),
      Text(
        'المحاسبي',
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontFamily: 'NotoRegular',
          height: 1.5,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(3.0, 2.0),
              blurRadius: 3.0,
              color: Color(color),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget customText(BuildContext context, String text, double fontSize,
    bool decoration, int color,
    
    {FontWeight weight = FontWeight.normal, TextAlign align = TextAlign.end}) {
  return Text(
    text,
    textDirection: TextDirection.rtl,
    textAlign: align,
    style: TextStyle(
        fontFamily: 'NotoBold',
        color: Color(color),
        fontSize: fontSize,
        fontWeight: weight,
        decoration:
            decoration ? TextDecoration.underline : TextDecoration.none),
  );
}