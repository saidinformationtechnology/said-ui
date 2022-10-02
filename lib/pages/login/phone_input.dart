// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_texts.dart';
import 'package:lastsaid/pages/login/login.dart';
import '../../services/constrants.dart';
import '../components/round_checkbox.dart';
import '../components/styledWidgets/styled_buttons.dart';

class PhoneInput extends StatefulWidget {
  const PhoneInput({Key? key}) : super(key: key);

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.11),
              customText(
                  context, 'فضلاً قم بإدخال رقم الجوال', 22, false, whiteColor),
              SizedBox(height: height * 0.005),
              customText(context, 'استخدم رقم الجوال لإكمال التسجيل', 16, false,
                  whiteColor),
              SizedBox(height: height * 0.045),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InputPhone(),
              ),
              SizedBox(height: height * 0.020),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/terms');
                      },
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/terms');
                        },
                        style: TextButton.styleFrom(
                          primary: whiteColor,
                        ),
                        child: customText(
                            context, 'الشروط والأحكام.', 16, true, whiteColor),
                      ),
                    ),
                    customText(context, 'لقد قرأت', 16, false, whiteColor),
                    SizedBox(width: 7),
                    MyCheckBox(),
                  ],
                ),
              ),
              SizedBox(height: height * 0.070),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: nextBtn(context, 'التالي', () {
                    Navigator.pushNamed(context, '/verification');
                  })),
              SizedBox(height: height * 0.050),
              textBtn(
                context,
                'لديك حساب؟ اضغط هنا لتسجيل الدخول',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputPhone extends StatefulWidget {
  const InputPhone({
    Key? key,
  }) : super(key: key);

  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
          counterText: "",
          // errorMaxLines: 1,
          // errorText: '',
          errorStyle: TextStyle(
            color: Colors.transparent,
            fontSize: 0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          filled: true,
          fillColor: whiteColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 19)),
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      initialCountryCode: 'SA',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
  }
}
