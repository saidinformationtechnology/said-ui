import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/Dilalogs/dialogs.dart';
import 'package:lastsaid/pages/login/phone_input.dart';
import 'package:lastsaid/pages/login/pass.dart';
import 'package:lastsaid/pages/components/round_checkbox.dart';

import '../components/bottom_navigator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF0268B2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Column(
              children: const [
                Text(
                  'Said Lite',
                  style: TextStyle(
                    fontFamily: 'ArialRounded',
                    fontSize: 38.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 2.0),
                        blurRadius: 3.0,
                        color: Color(0xFF015795),
                      ),
                    ],
                  ),
                ),
                Text(
                  'المحاسبي',
                  style: TextStyle(
                    fontSize: 34.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'NotoRegular',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 2.0),
                        blurRadius: 3.0,
                        color: Color(0xFF015795),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'صفحة تسجيل دخول',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontFamily: 'NotoBold',
                color: Colors.white,
                fontSize: 21,
              ),
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                  ),
                  mobileField(),
                  Container(
                    margin: const EdgeInsets.only(top: 18),
                  ),
                  passwordFeild(),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'تذكرني',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 5),
                        MyCheckBox(),
                      ],
                    ),
                  ),
                  submitButton(),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pass()),
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text(
                    'نسيت كلمة المرور ؟',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 14.0,
                        fontFamily: 'NotoBold'),
                  ),
                ),
                // SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PhoneInput()),
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text(
                    'ليس لديك حساب ؟ إضغط هنا للتسجيل ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 14.0,
                        fontFamily: 'NotoBold'),
                  ),
                ),
                TextButton.icon(
                  icon: const Icon(Icons.arrow_downward_rounded),
                  label: const Text(
                    'اللغة : العربية',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 15.0,
                        fontFamily: 'NotoBold'),
                  ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Dialogs.supportDialog(context);
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        alignment: Alignment.centerLeft),
                    child: const Text(
                      'التواصل مع الدعم',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 15.0,
                          fontFamily: 'NotoBold'),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget mobileField() {
    return SizedBox(
      width: 350.0,
      child: TextFormField(
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontSize: 20.0,
          color: Color(0xFFC5CED8),
        ),
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          hintText: 'رقم الجوال',
          hintStyle: TextStyle(
              color: Color(0xFFC5CED8),
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'NotoBold'),
          contentPadding: EdgeInsets.only(top: 25.0, left: 10, right: 10),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Color.fromRGBO(0, 0, 0, 0),
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget passwordFeild() {
    return SizedBox(
      width: 350.0,
      child: TextFormField(
        textAlign: TextAlign.right,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'كلمة المرور',
          hintStyle: TextStyle(
              color: Color(0xFFC5CED8),
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'NotoBold'),
          contentPadding: EdgeInsets.only(top: 25.0, left: 10, right: 10),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
        style: const TextStyle(
          fontSize: 20.0,
          color: Color(0xFFC5CED8),
        ),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all(const Color.fromRGBO(50, 185, 215, 1)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding:
            MaterialStateProperty.all(const EdgeInsets.fromLTRB(116, 11, 116, 11)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyBottomNavigation(),
          ),
        );
      },
      child: const Text('تسجيل الدخول',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NotoBold',
          )),
    );
  }
}
