import 'package:flutter/material.dart';

import '../../components/styledWidgets/styled_buttons.dart';
import '../../components/styledWidgets/styled_texts.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF0268B2),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 18),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(right: 35),
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Image.asset('assets/icons/back.png'),
                iconSize: 40,
                color: const Color(0xFFACF0FF),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              children: [
                customText(context, 'صفحة', 25, false, 0xFFFFFFFF,
                    align: TextAlign.start, height: 0.1),
                const SizedBox(height: 3),
                customText(context, 'إدارة الاشتراك', 25, false, 0xFFFFFFFF,
                    align: TextAlign.start),
              ],
            ),
            const SizedBox(height: 260),
            Container(
              width: double.infinity,
              height: 365,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      topLeft: Radius.circular(22))),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.centerRight,
                            child: customText(context, 'الاشتراك الحالي:', 21,
                                false, 0xFF0268B2,
                                align: TextAlign.start)),
                        const SizedBox(height: 25),
                        Container(
                            alignment: Alignment.centerRight,
                            child: customText(context, 'الباقة الشهرية', 19,
                                false, 0xFF0268B2,
                                align: TextAlign.start)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 40),
                                child: customText(
                                    context, 'ر.س', 20, false, 0xFF0268B2,
                                    align: TextAlign.start,
                                    weight: FontWeight.w800)),
                            const SizedBox(width: 5),
                            customText(context, '50', 55, false, 0xFF0268B2,
                                align: TextAlign.start,
                                weight: FontWeight.w800),
                            const SizedBox(width: 49),
                            SizedBox(
                                width: 160,
                                height: 50,
                                child: customText(
                                    context,
                                    'باقة سائد لايت المحاسبي الشهري',
                                    13,
                                    false,
                                    0xFF0268B2,
                                    align: TextAlign.start,
                                    weight: FontWeight.w800))
                          ],
                        ),
                        const SizedBox(height: 30),
                        Container(
                          margin: const EdgeInsets.only(left: 32),
                          child: outlineText(context, 'تغيير الاشتراك', () {
                            Navigator.pushNamed(context, '/packages');
                          }, top: 9, right: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
