// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names
// ignore: import_of_legacy_library_into_null_safe
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

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
                  const SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: const Text(
                      'معلومات المنشأة',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            ),
                          ],
                          fontFamily: 'NotoBold',
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 5),
                  CustomContainer(
                    width: double.infinity,
                    height: 650,
                    round: 13,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 6),
                          customText(
                              context, 'اسم المنشأة:', 13, false, 0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          inputField(context),
                          const SizedBox(height: 6),
                          customText(context, 'رقم السجل التجاري:', 13, false,
                              0xFF0268B2,
                              weight: FontWeight.w800, align:TextAlign.start),
                          const SizedBox(height: 2),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((Builder) => bottomSheet()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                dottedInput(context, 0xFFD46376, 'ارفاق السجل التجاري'),
                                inputField(context, type: TextInputType.number, width:170.0),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          customText(context, 'الرقم الضريبي:', 13, false,
                              0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((Builder) => bottomSheet()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                dottedInput(
                                    context, 0xFF1A9B63, 'ارفاق الشهادة الضريبية'),
                                inputField(context,
                                    type: TextInputType.number, width: 170.0),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          customText(
                              context, 'هوية المالك أو المفوّض:', 13, false, 0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((Builder) => bottomSheet()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                dottedInput(context, 0xFF1A9B63,
                                    'ارفاق الشهادة الضريبية'),
                                inputField(context,
                                    type: TextInputType.number, width: 170.0),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          customText(
                              context, 'البريد الإلكتروني:', 13, false, 0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          inputField(context, type: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 6),
                          customText(context, 'رقم الجوال:', 13, false,
                              0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          inputField(
                            context,
                            type: TextInputType.number,
                          ),
                          const SizedBox(height: 6),

                          customText(
                              context, 'المدينة:', 13, false, 0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          inputField(context),
                          const SizedBox(height: 6),

                          customText(context, 'الحي:', 13, false, 0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          inputField(context),
                          const SizedBox(height: 6),

                          customText(context, 'العنوان:', 13, false, 0xFF0268B2,
                              weight: FontWeight.w800, align: TextAlign.start),
                          const SizedBox(height: 2),
                          inputField(context),
                          
                          const SizedBox(height: 15),
                          nextBtn(context, 'حفظ', () {
                              Navigator.pushNamed(context, '/packages');
                            }, cheight: 22, size:13, elevation:3.0, top:5),
                                                 ],
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
            child:customText(context, 'فتح ألبوم الصور',15, false, 0xFF0268B2, weight: FontWeight.w800, align: TextAlign.start
              )
          ),
          const Divider(thickness: 1, color: Color(0xFF0268B2)),
          const SizedBox(height: 6),
          InkWell(
            onTap: () {},
            child:customText(context, 'فتح مدير الملفات',15, false, 0xFF0268B2, weight: FontWeight.w800, align:TextAlign.start
              )
          ),
          const Divider(thickness: 1, color: Color(0xFF0268B2)),
          const SizedBox(height: 6),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child:customText(context, 'إلغاء',15, false, 0xFFD46376, weight: FontWeight.w800, align:TextAlign.start
              )
          ),
        ],
      ),
    );
  }
}

Widget dottedInput(BuildContext context, int color, String text) {
  return CustomContainer(
    height: 32,
    border: true,
    round: 7,
    width: 130,
    child: DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(7),
      dashPattern: const [4, 4],
      color: Color(color),
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
              AssetImage('assets/icons/attach.png'),
              size: 19,
              color: Color(color),
            ),
          ],
        ),
      ),
    ),
  );
}