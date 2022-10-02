import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/Dilalogs/dialogs.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_texts.dart';

import '../../services/constrants.dart';
import '../components/styledWidgets/styled_buttons.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryBlue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: height * 0.09),
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/images/12.png'),
              ),
              SizedBox(height: height * 0.02),
              Column(
                children: [
                  saidLogo(context, 0xFF015795),
                  const SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: SizedBox(
                      height: 47,
                      child: Row(children: [
                        Expanded(
                          child: registerBtn(context, 'تسجيل جديد', () {
                            Navigator.pushNamed(context, '/phoneinput');
                          }),
                        ),
                        SizedBox(width: width * 0.1),
                        Expanded(
                          child: registerBtn(context, 'تسجيل دخول', () {
                            Navigator.pushNamed(context, '/phoneinput');
                          }),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        icon: const Icon(Icons.arrow_downward_rounded),
                        label: const Text(
                          'اللغة : العربية',
                          style: TextStyle(
                            color: whiteColor,
                            decoration: TextDecoration.underline,
                            fontSize: 14.0,
                            fontFamily: 'NotoBold',
                          ),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: whiteColor,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextButton(
                        onPressed: () {
                          Dialogs.supportDialog(context);
                        },
                        style: TextButton.styleFrom(
                          primary: whiteColor,
                        ),
                        child: const Text(
                          'التواصل مع الدعم ',
                          style: TextStyle(
                            color: whiteColor,
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
      ),
    );
  }
}