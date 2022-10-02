// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

import '../../services/constrants.dart';
import '../components/styledWidgets/styled_buttons.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 7),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 15),
              child: IconButton(
                  icon: Image.asset('assets/icons/clear.png'),
                  iconSize: 52,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Container(
              child: Text(
                'صفحة الدفع',
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  height: 0.1,
                  fontFamily: 'NotoBold',
                  color: whiteColor,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(
              child: Image.asset('assets/images/success.png',
                  width: 260, height: 100),
            ),
            SizedBox(height: 15),
            Container(
              child: Column(
                children: [
                  Text(
                    'شكراً لك',
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      color: whiteColor,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'تمت عملية الدفع بنجاح',
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      color: whiteColor,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Container(
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: transparentBlack,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: whiteColor,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(0, 20, 23, 0),
                      child: Text(
                        'تفاصيل الطلب',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          color: primaryBlue,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: whiteColor,
                          border: Border.all(color: primaryBlue, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 60),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'باقة سائد لايت الشهري',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      color: primaryBlue,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '50 ر.س',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      color: primaryBlue,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFAFF0FF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'إجمالي الدفع:',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                color: primaryBlue,
                                fontSize: 15,
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      '0 رس',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontFamily: 'NotoBold',
                                        color: primaryBlue,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'استخدام كود الخصم:',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      color: primaryBlue,
                                      fontSize: 15,
                                    ),
                                  ),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  child: Text(
                                    '50 رس',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      color: primaryBlue,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  'المجموع النهائي:',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'NotoBold',
                                    color: primaryBlue,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 17),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                outlineText(
                                    context, 'الإنتقال إلى الصفحة الرئيسية',
                                    () {
                                  Navigator.pushNamed(context, '/userHome');
                                }, top: 9, right: 10)
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
