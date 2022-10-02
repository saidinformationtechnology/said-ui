import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../services/constrants.dart';
import '../components/styledWidgets/styled_buttons.dart';
import '../components/styledWidgets/styled_texts.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryBlue,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 110),
              customText(context, 'كود التحقق', 22, false, whiteColor),
              customText(context, 'تم إرسال كود التحقق', 17, false, whiteColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '+966 555 111 999',
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      color: whiteColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 7),
                  customText(context, 'إلى الرقم', 17, false, whiteColor),
                ],
              ),
              const SizedBox(height: 14),
              const SizedBox(
                width: 250,
                child: MyCode(),
              ),
              const SizedBox(height: 40),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: nextBtn(context, 'التالي', () {
                    Navigator.pushNamed(context, '/facilityinput');
                  })),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '(00:00)',
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    textBtn(context, 'إرسال رمز التحقق مرة أخرى', () {})
                  ],
                ),
              ),
              const SizedBox(height: 5),
              textBtn(
                context,
                'تغيير رقم الجوال',
                () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      insetPadding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      title: customText(
                          context,
                          'هل تريد تغيير رقم الجوال بالفعل؟',
                          20.0,
                          false,
                          primaryBlue,
                          weight: FontWeight.w600,
                          align: TextAlign.center),
                      actions: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 11),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                dialogBtn(context, 'لا', () {
                                  Navigator.pop(context);
                                }),
                                dialogBtn(context, 'نعم', () {
                                  Navigator.pushNamed(context, '/phoneinput');
                                }, color: whiteColor),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCode extends StatefulWidget {
  const MyCode({Key? key}) : super(key: key);

  @override
  State<MyCode> createState() => _MyCodeState();
}

class _MyCodeState extends State<MyCode> {
  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      defaultPinTheme: PinTheme(
        textStyle: const TextStyle(
          color: primaryBlue,
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
        width: 45,
        height: 52,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: transparentBlack,
              offset: Offset(0, 1),
            ),
          ],
        ),
      ),
    );
  }
}

Widget dialogBtn(BuildContext context, String text, Function doSomething,
    {Color color = cyan}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(color),
      foregroundColor: MaterialStateProperty.all(primaryBlue),
      padding:
          MaterialStateProperty.all(const EdgeInsets.fromLTRB(60, 10, 60, 10)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    ),
    child: customText(context, text, 15.0, false, primaryBlue,
        weight: FontWeight.w600),
    onPressed: () {
      doSomething();
    },
  );
}
