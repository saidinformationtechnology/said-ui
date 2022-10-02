import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/constrants.dart';
import '../../components/styledWidgets/styled_texts.dart';
class SupsBtn extends StatefulWidget {
  final Function doSomething;

  const SupsBtn({Key? key, required this.doSomething}) : super(key: key);

  @override
  State<SupsBtn> createState() => _SupsBtnState();
}

class _SupsBtnState extends State<SupsBtn> {
  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size.zero),
          elevation: MaterialStateProperty.all(0),
          backgroundColor:
              MaterialStateProperty.all( cyan),
          foregroundColor: MaterialStateProperty.all(whiteColor),
          padding:
              MaterialStateProperty.all(EdgeInsets.fromLTRB(7.w, 0.4.h, 7.w, 0.4.h)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        onPressed: () {
          widget.doSomething();
        },
    child: customText(context, 'اشتراك', 7.sp, false, primaryBlue));
  }
}