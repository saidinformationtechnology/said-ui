// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lastsaid/pages/allpackages/packagesScreen/sups_card.dart';
import 'package:sizer/sizer.dart';
import '../../../services/constrants.dart';
import '../../components/styledWidgets/styled_texts.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';


class Packages extends StatefulWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: customText(
            context, 'اختر الباقة المناسبة', 15.sp, false, whiteColor,
            weight: FontWeight.bold),
      ),
      body: SizedBox(child: Center(child: Wheel())),
    );
  }
}

class Wheel extends StatefulWidget {
  const Wheel({
    Key? key,
  }) : super(key: key);

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  final _scrollController = FixedExtentScrollController();

  static const double _itemHeight = 250;
  static const int _itemCount = 3;

  @override
  Widget build(BuildContext context) {
    return ClickableListWheelScrollView(
      scrollController: _scrollController,
      itemHeight: _itemHeight,
      itemCount: _itemCount,
      onItemTapCallback: (index) {
        if (index == 0) {
          Navigator.pushNamed(context, '/daily');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/monthly');
        } else {
          Navigator.pushNamed(context, '/yearly');
        }
      },
      child: ListWheelScrollView.useDelegate(
        controller: _scrollController,
        itemExtent: _itemHeight,
        physics: FixedExtentScrollPhysics(),
        overAndUnderCenterOpacity: 0.5,
        perspective: 0.002,
        onSelectedItemChanged: (index) {
          if (index == 0) {
            navigateToPage('/daily');
          } else if (index == 1) {
            navigateToPage('/monthly');
          } else {
            navigateToPage('/yearly');
          }
        },
        childDelegate: ListWheelChildListDelegate(children: [
          SupsCard(
              title: 'الباقة اليومية', price: 2, size: 44.sp),
          SupsCard(
              title: 'الباقة الشهرية',
              price: 50,
              size: 39.sp,
              ),
          SupsCard(
              title: 'الباقة السنوية',
              price: 500,
              size: 36.sp,
             ),
        ]),
      ),
    );
  }

  navigateToPage(String link) async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushNamed(context, link);
  }
}
