import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/Dilalogs/dialogs.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_texts.dart';

import '../components/styledWidgets/styled_buttons.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0268B2),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 90.0),
            ),
            const CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/images/12.png'),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
            ),
            Column(
              children: [
                saidLogo(context, 0xFF015795),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      registerBtn(context, 'تسجيل جديد', () {
                        Navigator.pushNamed(context, '/phoneinput');
                      }),
                      registerBtn(context, 'تسجيل دخول', () {
                        Navigator.pushNamed(context, '/phoneinput');
                      }),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      icon: const Icon(Icons.arrow_downward_rounded),
                      label: const Text(
                        'اللغة : العربية',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                          fontFamily: 'NotoBold',
                        ),
                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 2),
                    TextButton(
                      onPressed: () {
                        Dialogs.supportDialog(context);
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: const Text(
                        'التواصل مع الدعم ',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                          fontFamily: 'NotoBold',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}