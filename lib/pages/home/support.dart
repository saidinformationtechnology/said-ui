import 'package:flutter/material.dart';

import '../components/styledWidgets/styled_texts.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF0268B2),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 156,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ), //BorderRadius.vertical
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(context, 'الدعم الفني', 26, false, 0xFF0268B2)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 125),
          Container(
            width: double.infinity,
            height: 461,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              //BorderRadius.vertical
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                children: [
                  const SizedBox(height: 36),
                  supportBtn(
                      context, 'المحادثة المباشرة', 'assets/icons/chat.png', (){}),
                  const SizedBox(height: 16),
                  supportBtn(context, 'اترك رسالتك',
                      'assets/icons/text.png', () {
                        Navigator.pushNamed(context, '/message');
                      }),
                  const SizedBox(height: 16),
                  supportBtn(context, 'الأسئلة الشائعة',
                      'assets/icons/question-circle.png', () {
                        Navigator.pushNamed(context, '/questions');
                      }),
                  const SizedBox(height: 109),
                  followUs(context)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget supportBtn(
    BuildContext context, String text, String icon, Function doSomething) {
  return InkWell(
    onTap: () {
      doSomething();
    },
    child: Container(
      height: 53,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: const Color(0xFF0268B2), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            customText(context,text, 19, false, 0xFF32b9d7,
                align: TextAlign.start),
            const SizedBox(width: 13),
            ImageIcon(
              AssetImage(icon),
              color: Color(0xFF0268B2),
              size: 30,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget followUs(BuildContext context) {
  return Column(
    children: [
      customText(context,'تابعنا على قنوات التواصل التالية:', 14,false, 0xFF0268B2),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/instagram.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/twitter.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/linkedin.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/youtube.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}