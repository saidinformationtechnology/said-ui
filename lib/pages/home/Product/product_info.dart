import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/Dilalogs/dialogs.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_inputs.dart';

import '../../components/switcher.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 67),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Image.asset('assets/icons/clear.png'),
                          iconSize: 50,
                          // color: Color(0xFF0268B2),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      const Text(
                        'ميني سوبر ماركت',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              ),
                            ],
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 165,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        ),
                      ],
                      color: Colors.grey[700]),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(right: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'بيانات المنتج',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              ),
                            ],
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 22),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        width: double.infinity,
                        height: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            children: [
                              const SizedBox(height: 30),
                              inputField(context, placeholder: 'باركود المنتج'),
                              const SizedBox(height: 40),
                              inputField(context, placeholder: 'اسم المنتج'),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      numberInputField(context),
                                      const SizedBox(width: 4),
                                      const Text(
                                        'سعر البيع:',
                                        textDirection: TextDirection.rtl,
                                        style:TStyle.tstyle
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      numberInputField(context),
                                      const SizedBox(width: 4),
                                      const Text(
                                        'سعر الشراء:',
                                        textDirection: TextDirection.rtl,
                                        style:TStyle.tstyle
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: const [
                                  Text(
                                    'تضمين الضريبة',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromRGBO(50, 185, 215, 1),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  MySwitcher(),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 68),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(4),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromRGBO(50, 185, 215, 1)),
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(
                                        const EdgeInsets.symmetric(
                                            vertical: 3)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Dialogs.addProductDialog(context);
                                  },
                                  child: Container(
                                    height: 33,
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'حفظ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'NotoBold',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TStyle {
  static const tstyle = TextStyle(
    fontFamily: 'NotoBold',
    fontSize: 13,
    fontWeight: FontWeight.w800,
    color: Color(0xFF0268B2),
  );
}
