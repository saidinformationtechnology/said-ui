// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0268B2),
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
                  color: Colors.white,
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
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'تمت عملية الدفع بنجاح',
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      color: Colors.white,
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
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: Colors.white,
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
                          color: Color(0xFF0268B2),
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
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFF0268B2), width: 1),
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
                                      color: Color(0xFF0268B2),
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '50 ر.س',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      color: Color(0xFF0268B2),
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
                                color: Color(0xFF0268B2),
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
                                        color: Color(0xFF0268B2),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'استخدام كود الخصم:',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      color: Color(0xFF0268B2),
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
                                      color: Color(0xFF0268B2),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  'المجموع النهائي:',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'NotoBold',
                                    color: Color(0xFF0268B2),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 17),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  child: Text(
                                    'الإنتقال إلى الصفحة الرئيسية',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'NotoBold',
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    foregroundColor: MaterialStateProperty.all(
                                        Color(0xFF0268B2)),
                                    side: MaterialStateProperty.all(
                                      BorderSide(
                                          color: Color(0xFF0268B2), width: 1),
                                    ),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.fromLTRB(10, 9, 10, 9)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/userHome');
                                  },
                                ),
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
