// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lastsaid/pages/login/verification.dart';
import 'package:lastsaid/pages/login/login.dart';

import '../components/Dilalogs/dialogs.dart';

class Pass extends StatefulWidget {
  @override
  createState() {
    return PassState();
  }
}

class PassState extends State<Pass> {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'said Lite - Login',
      home: Scaffold(
        backgroundColor: Color(0xFF0268B2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Column(
                children: [
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
              Container(
                margin: EdgeInsets.only(top: 60),
              ),
              Text(
                'استعادة كلمة المرور:',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'NotoBold',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                    ),
                    mobileField(),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                    ),
                    submitButton(),
                  ],
                ),
              ),
              SizedBox(height: 45),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text(
                  'الرجوع إلى صفحة تسجيل الدخول',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontFamily: 'NotoBold',
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextButton.icon(
                icon: Icon(Icons.arrow_downward_rounded),
                label: Text(
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
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  alignment: Alignment.centerLeft
                ),
                child: Text(
                  'التواصل مع الدعم',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 15.0,
                      fontFamily: 'NotoBold'),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mobileField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: IntlPhoneField(
        decoration: InputDecoration(
            counterText: "",
            errorMaxLines: 1,
            errorText: '',
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
                EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        initialCountryCode: 'SA',
        onChanged: (phone) {
          // ignore: avoid_print
          print(phone.completeNumber);
        },
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: Text('إرسال',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NotoBold',
          )),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all(Color.fromRGBO(50, 185, 215, 1)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding:
            MaterialStateProperty.all(EdgeInsets.fromLTRB(145, 11, 145, 11)),
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
            builder: (context) => Verification(),
          ),
        );
      },
    );
  }
}
