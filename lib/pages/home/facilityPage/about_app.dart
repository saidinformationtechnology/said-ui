import 'package:flutter/material.dart';

import '../../components/styledWidgets/styled_texts.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0368B2),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 70),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: IconButton(
                      icon: Image.asset('assets/icons/clear.png'),
                      iconSize: 52,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
            const SizedBox(height: 150),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                customText(context,'تم إصدار هذا البرنامج', 17, false, 0xFFFFFFFF),
                customText(context, 'من فريق سائد لتقنية المعلومات', 17, false, 0xFFFFFFFF),
              ],
            )
          ],
        ),
      ),
    );
  }
}
