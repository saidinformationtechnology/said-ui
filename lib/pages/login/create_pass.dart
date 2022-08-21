// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CreatePass extends StatefulWidget {
  @override
  createState() {
    return CreatePassState();
  }
}

class CreatePassState extends State<CreatePass> {
  @override
  Widget build(context) {
    return  Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xFF0268B2),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'أنشئ كلمة مرور',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'NotoBold',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'يجب أن تكون كلمة المرور مكونة من 8 خانات تحتوي على حروف و أرقام',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'NotoBold',
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                      ),
                      passwordFeild(),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                      ),
                      passwordFeild2(),
                      Container(
                        margin: EdgeInsets.only(top: 38),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:22),
                        child: submitButton(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  Widget passwordFeild() {
    return SizedBox(
        width: 350.0,
        child: TextFormField(
          textAlign: TextAlign.center,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'كلمة المرور',
            hintStyle: TextStyle(
                color: Color(0xFFC5CED8),
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoBold'),
            contentPadding: EdgeInsets.only(top: 25.0, left: 10, right: 10),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
          ),
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFC5CED8),
          ),
        ));
  }

  Widget passwordFeild2() {
    return SizedBox(
        width: 350.0,
        child: TextFormField(
          textAlign: TextAlign.center,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'إدخال كلمة المرور مرة أخرى',
            hintStyle: TextStyle(
                color: Color(0xFFC5CED8),
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoBold'),
            contentPadding: EdgeInsets.only(top: 25.0, left: 10, right: 10),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
          ),
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFC5CED8),
          ),
        ),);
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all(Color.fromRGBO(50, 185, 215, 1)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(31, 9, 31, 9)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ),
      onPressed: () {},
      child: Container(
        height: 33,
       
        alignment: Alignment.center,
        child: Text(
          'التالي',
          style: TextStyle(
              fontSize: 16, fontFamily: 'NotoBold', color: Colors.white),
        ),
      ),
    );
  }
}
