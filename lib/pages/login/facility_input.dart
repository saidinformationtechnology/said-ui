// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names
// ignore: import_of_legacy_library_into_null_safe
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../services/constrants.dart';
import '../components/styledWidgets/styled_buttons.dart';
import '../components/styledWidgets/styled_container.dart';
import '../components/styledWidgets/styled_inputs.dart';
import '../components/styledWidgets/styled_texts.dart';

class FacilityInput extends StatefulWidget {
  const FacilityInput({Key? key}) : super(key: key);

  @override
  State<FacilityInput> createState() => _FacilityInputState();
}

class _FacilityInputState extends State<FacilityInput> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  //SizedBox(height: height * 0.020),
                  SizedBox(height: 3.h),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: Text(
                      'معلومات المنشأة',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          shadows: const [
                            Shadow(
                              blurRadius: 10.0,
                              color: transparentBlack,
                              offset: Offset(0, 2),
                            ),
                          ],
                          fontFamily: 'NotoBold',
                          color: whiteColor,
                          fontSize: 15.sp),
                    ),
                  ),
                  const SizedBox(height: 5),
                  CustomContainer(
                    width: double.infinity,
                    height: height * 0.80,
                    round: 13,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 6),
                            customText(context, 'اسم المنشأة:', 7.5.sp, false,
                                primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            inputField(context, height: 3.5.h),
                            SizedBox(height: 1.h),
                            customText(context, 'رقم السجل التجاري:', 7.5.sp,
                                false, primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: ((Builder) => bottomSheet()),
                                );
                              },
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: dottedInput(context, redColor,
                                          'ارفاق السجل التجاري')),
                                  const SizedBox(width: 10),
                                  Expanded(
                                      child: inputField(context,
                                          type: TextInputType.number,
                                          height: 3.5.h)),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.h),
                            customText(context, 'الرقم الضريبي:', 7.5.sp, false,
                                primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: ((Builder) => bottomSheet()),
                                );
                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: dottedInput(context, greenColor,
                                        'ارفاق الشهادة الضريبية'),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: inputField(context,
                                        type: TextInputType.number,
                                        height: 3.5.h),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.h),
                            customText(context, 'هوية المالك أو المفوّض:',
                                7.5.sp, false, primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: ((Builder) => bottomSheet()),
                                );
                              },
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: dottedInput(context, greenColor,
                                        'ارفاق الشهادة الضريبية'),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: inputField(context,
                                        type: TextInputType.number,
                                        height: 3.5.h),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.h),
                            customText(context, 'البريد الإلكتروني:', 7.5.sp,
                                false, primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            inputField(context,
                                type: TextInputType.emailAddress,
                                height: 3.5.h),
                            SizedBox(height: 1.h),
                            customText(context, 'رقم الجوال:', 7.5.sp, false,
                                primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            inputField(context,
                                type: TextInputType.number, height: 3.5.h),
                            SizedBox(height: 1.h),
                            customText(
                                context, 'المدينة:', 7.5.sp, false, primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            inputField(context, height: 3.5.h),
                            SizedBox(height: 1.h),
                            customText(
                                context, 'الحي:', 7.5.sp, false, primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            inputField(context, height: 3.5.h),
                            SizedBox(height: 1.h),
                            customText(
                                context, 'العنوان:', 7.5.sp, false, primaryBlue,
                                weight: FontWeight.w800,
                                align: TextAlign.start),
                            SizedBox(height: 0.5.h),
                            inputField(context, height: 3.5.h),
                            SizedBox(height: 3.h),
                            nextBtn(context, 'حفظ', () {
                              Navigator.pushNamed(context, '/packages');
                            },
                                cheight: 22,
                                elevation: 3.0,
                                top: 1.3.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          InkWell(
              onTap: () {},
              child: customText(
                  context, 'فتح ألبوم الصور', 15, false, primaryBlue,
                  weight: FontWeight.w800, align: TextAlign.start)),
          const Divider(thickness: 1, color: primaryBlue),
          const SizedBox(height: 6),
          InkWell(
              onTap: () {},
              child: customText(
                  context, 'فتح مدير الملفات', 15, false, primaryBlue,
                  weight: FontWeight.w800, align: TextAlign.start)),
          const Divider(thickness: 1, color: primaryBlue),
          const SizedBox(height: 6),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: customText(context, 'إلغاء', 15, false, redColor,
                  weight: FontWeight.w800, align: TextAlign.start)),
        ],
      ),
    );
  }
}

Widget dottedInput(BuildContext context, Color color, String text) {
  return CustomContainer(
    height: 32,
    border: true,
    round: 7,
    width: 130,
    child: DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(7),
      dashPattern: const [4, 4],
      color: color,
      strokeWidth: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                customText(context, text, 7, false, color,
                    weight: FontWeight.w900, align: TextAlign.start),
                customText(context, 'بامتداد PNG أو PDF', 7, false, color,
                    weight: FontWeight.w900, align: TextAlign.start),
              ],
            ),
            ImageIcon(
              const AssetImage('assets/icons/attach.png'),
              size: 19,
              color: color,
            ),
          ],
        ),
      ),
    ),
  );
}
