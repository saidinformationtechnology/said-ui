import 'package:flutter/material.dart';
import 'package:lastsaid/pages/allpackages/packagesScreen/sups_btn.dart';
import 'package:sizer/sizer.dart';

import '../../../services/constrants.dart';
import '../../components/styledWidgets/styled_container.dart';
import '../../components/styledWidgets/styled_texts.dart';

class SupsCard extends StatelessWidget {
  final String title;
  final int price;
  final double size;

  const SupsCard(
      {Key? key,
      required this.title,
      required this.price,
      this.size = 60.0,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        round: 12.0,
        width: 48.w,
        height: 26.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.h),
            customText(context, title, 11.7.sp, false, primaryBlue,
                weight: FontWeight.bold),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                color: primaryBlue,
                thickness: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: customText(context, " ر.س  ", 9.sp, false, primaryBlue,
                      weight: FontWeight.bold, align: TextAlign.start),
                ),
                Center(
                  child: Text(
                    "$price ",
                    style: TextStyle(
                      fontSize: size,
                      color: primaryBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: customText(
                  context,
                  " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                  6.9.sp,
                  true,
                  primaryBlue,
                  weight: FontWeight.bold,
                  align: TextAlign.center),
            ),
            Center(
              child: SupsBtn(
                doSomething:() {
                },
              ),
            ),
          ],
        ),
    );
  }
}
