import 'package:flutter/material.dart';

import '../components/Dilalogs/dialogs.dart';
import '../components/styledWidgets/styled_texts.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: Image.asset('assets/icons/clear.png'),
                          iconSize: 52,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      const Text(
                        'الأسئلة الشائعة :',
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          height: 3,
                          fontFamily: 'NotoBold',
                          color: Color.fromRGBO(50, 185, 215, 1),
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                questionTab(context, 'ماهو تطبيق Said Light ؟',
                    'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.', true),
                questionTab(context, 'ماهي خدمات هذا التطبيق؟',
                    'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.', true),
                questionTab(context, 'هل بياناتي آمنة؟',
                    'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.', true),
                questionTab(context, 'هل يمكنني استرداد المبلغ المدفوع؟',
                    'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.', true),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: const Text(
                    'البيانات الإلزامية من العميل:',
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      color: Color.fromRGBO(50, 185, 215, 1),
                      fontSize: 22,
                    ),
                  ),
                ),
                Column(
                  children: [
                    questionTab(context, 'الاسم', '', false),
                    questionTab(context, 'الإيميل', '', false),
                    questionTab(context, 'رقم الجوال', '', false),
                    questionTab(context, 'المدينة', '', false),
                    questionTab(context, 'النشاط', '', false),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget questionTab(
    BuildContext context, String text, String content, bool tab) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.only(right: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (tab) ...[
          TextButton(
            child: customText(context, text, 17, false, 0xFFFFFFFF,
                align: TextAlign.start),
            onPressed: () {
              Dialogs.addProductDialog(context, content);
            },
          ),
          const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
              child:
                  Icon(Icons.minimize_rounded, color: Colors.white, size: 30)),
        ] else ...[
          customText(context, text, 18, false, 0xFFFFFFFF,
              align: TextAlign.start),
          const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 10, 10, 10),
              child: Icon(Icons.brightness_1, size: 21)),
        ]
      ],
    ),
  );
}
