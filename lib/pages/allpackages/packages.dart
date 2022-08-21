// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../components/styledWidgets/styled_container.dart';
import '../components/styledWidgets/styled_texts.dart';

class Packages extends StatelessWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0268B2),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            ),
            customText(context, 'اختر الباقة المناسبة', 20.0, false, 0xFFFFFFFF,
                weight: FontWeight.bold),
            const SizedBox(height: 10),
            CustomContainer(
              round: 12.0,
              width: 186.0,
              height: 215.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 17),
                  customText(context, "الباقة اليومية", 14.0, false, 0xFF0268B2,
                      weight: FontWeight.bold),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      color: Color(0xFF0268B2),
                      thickness: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: customText(
                            context, " ر.س  ", 12.0, false, 0xFF0268B2,
                            weight: FontWeight.bold, align: TextAlign.start),
                      ),
                      Center(
                        child: Text(
                          "2 ",
                          style: TextStyle(
                            fontSize: 60,
                            color: Color(0xFF0268B2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      textAlign: TextAlign.center,
                      " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                      style: TextStyle(
                        fontFamily: 'NotoRegular',
                        height: 1.6,
                        fontSize: 10,
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  supsBtn(
                    context,
                    () {
                      Navigator.pushNamed(context, '/daily');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            CustomContainer(
              round: 12.0,
              width: 186.0,
              height: 215.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 17),
                  customText(context, "الباقة الشهرية", 14.0, false, 0xFF0268B2,
                      weight: FontWeight.bold),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      color: Color(0xFF0268B2),
                      thickness: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: customText(
                            context, " ر.س  ", 12.0, false, 0xFF0268B2,
                            weight: FontWeight.bold, align: TextAlign.start),
                      ),
                      const Center(
                        child: Text(
                          "50",
                          style: TextStyle(
                            fontSize: 55,
                            color: Color(0xFF0268B2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      textAlign: TextAlign.center,
                      " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                      style: TextStyle(
                        fontFamily: 'NotoRegular',
                        height: 1.6,
                        fontSize: 10,
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  supsBtn(
                    context,
                    () {
                      Navigator.pushNamed(context, '/monthly');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            CustomContainer(
              round: 12.0,
              width: 186.0,
              height: 215.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 17),
                  customText(context, "الباقة السنوية", 14.0, false, 0xFF0268B2,
                      weight: FontWeight.bold),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      color: Color(0xFF0268B2),
                      thickness: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: customText(
                            context, " ر.س  ", 12.0, false, 0xFF0268B2,
                            weight: FontWeight.bold, align: TextAlign.start),
                      ),
                      const Center(
                        child: Text(
                          "500",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFF0268B2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      textAlign: TextAlign.center,
                      " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                      style: TextStyle(
                        fontFamily: 'NotoRegular',
                        height: 1.6,
                        fontSize: 10,
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  supsBtn(
                    context,
                    () {
                      Navigator.pushNamed(context, '/yearly');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget supsBtn(BuildContext context, Function doSomething) {
  return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size.zero),
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all(const Color.fromRGBO(50, 185, 215, 1)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding:
            MaterialStateProperty.all(const EdgeInsets.fromLTRB(33, 4, 33, 4)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      onPressed: () {
        doSomething();
      },
      child: customText(context, 'اشتراك', 7, false, 0xFF0268B2));
}
