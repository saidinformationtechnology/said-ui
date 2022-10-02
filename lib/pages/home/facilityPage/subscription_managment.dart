import 'package:flutter/material.dart';

import '../../../services/constrants.dart';
import '../../components/styledWidgets/styled_buttons.dart';
import '../../components/styledWidgets/styled_texts.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: primaryBlue,
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
                color: lightCyan,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              children: [
                customText(context, 'صفحة', 25, false, whiteColor,
                    align: TextAlign.start, height: 0.1),
                const SizedBox(height: 3),
                customText(context, 'إدارة الاشتراك', 25, false, whiteColor,
                    align: TextAlign.start),
              ],
            ),
            SizedBox(height: height*0.333),
            Container(
              width: double.infinity,
              height: height*0.45,
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
                                false, primaryBlue,
                                align: TextAlign.start)),
                        const SizedBox(height: 25),
                        Container(
                            alignment: Alignment.centerRight,
                            child: customText(context, 'الباقة الشهرية', 19,
                                false, primaryBlue,
                                align: TextAlign.start)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 40),
                                child: customText(
                                    context, 'ر.س', 20, false, primaryBlue,
                                    align: TextAlign.start,
                                    weight: FontWeight.w800)),
                            const SizedBox(width: 5),
                            customText(context, '50', 55, false, primaryBlue,
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
                                    primaryBlue,
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
