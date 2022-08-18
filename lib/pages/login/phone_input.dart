// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_texts.dart';
import 'package:lastsaid/pages/login/login.dart';
import '../components/round_checkbox.dart';
import '../components/styledWidgets/styled_buttons.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0268B2),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 110),
              customText(context, 'فضلاً قم بإدخال رقم الجوال', 22, false, 0xFFFFFFFF),
              SizedBox(height: 5),
              customText(
                  context, 'استخدم رقم الجوال لإكمال التسجيل', 16, false, 0xFFFFFFFF),
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: IntlPhoneField(
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
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 19)),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  initialCountryCode: 'SA',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              SizedBox(height: 20),
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
                          primary: Colors.white,
                        ),
                        child:
                            customText(context, 'الشروط والأحكام.', 16, true, 0xFFFFFFFF),
                      ),
                    ),
                    customText(context, 'لقد قرأت', 16, false, 0xFFFFFFFF),
                    SizedBox(width: 7),
                    MyCheckBox(),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: nextBtn(context, 'التالي', () {
                    Navigator.pushNamed(context, '/verification');
                  })),
              SizedBox(height: 50),
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