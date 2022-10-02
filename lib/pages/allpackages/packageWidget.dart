// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../services/constrants.dart';
import '../components/dropdown.dart';
import '../components/styledWidgets/styled_buttons.dart';
import '../components/styledWidgets/styled_texts.dart';

Widget package(BuildContext context, String type, int price,
    {double width = 73.0, double size = 60.0}) {
  final height = MediaQuery.of(context).size.height;
  return Container(
    width: double.infinity,
    height: height *0.60,
    decoration: const BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: transparentBlack,
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(22), topLeft: Radius.circular(22))),
    child: Column(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: customText(context, type, 21.0, false, primaryBlue,
                    align: TextAlign.start),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 40),
                      child: customText(
                          context, 'ر.س', 20.0, false, primaryBlue,
                          align: TextAlign.start)),
                  const SizedBox(width: 5),
                  Text(
                    '$price',
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      fontSize: size,
                      fontWeight: FontWeight.w800,
                      color: primaryBlue,
                    ),
                  ),
                  SizedBox(width: width),
                  SizedBox(
                      width: 160,
                      height: 50,
                      child: customText(
                          context,
                          'باقة سائد لايت المحاسبي الشهري',
                          13.0,
                          false,
                          primaryBlue,
                          align: TextAlign.start))
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  child: customText(
                      context,
                      'تجدد الباقة تلقائياً عند نهاية الاشتراك',
                      14.0,
                      true,
                      primaryBlue,
                      align: TextAlign.start)),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(left: 32),
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: cyanLight,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: customText(
                            context, 'تطبيق', 13.0, false, primaryBlue,
                            align: TextAlign.start)),
                    Container(
                      width: 2,
                      height: 25,
                      color: darkGray,
                    ),
                    const SizedBox(
                      width: 100,
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          // isDense: true, // Added this
                          contentPadding: EdgeInsets.only(
                              bottom: 11, left: 3, right: 3), // Added this
                          hintText: 'كود الاشتراك',
                          hintStyle: TextStyle(
                            fontFamily: 'NotoBold',
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: secondaryBlue,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  'الدفع عبر:',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'NotoBold',
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: primaryBlue,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 32),
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: cyanLight,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    DropdownMenu(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                  margin: const EdgeInsets.only(left: 32),
                  child: outlineText(context, 'إتمام الدفع', () {
                    Navigator.pushNamed(context, '/successPay');
                  }, top: 8.3, right: 20.0)),
            ],
          ),
        )
      ],
    ),
  );
}
