import 'package:flutter/material.dart';
import '../components/styledWidgets/styled_buttons.dart';
import '../components/styledWidgets/styled_container.dart';
import '../components/switcher.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF0268B2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 18),
              paymentHeader(context),
              const SizedBox(height: 230),
              Container(
                width: double.infinity,
                height: 450,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(22),
                        topLeft: Radius.circular(22))),
                child: Padding(
                  padding: const EdgeInsets.only(right: 23, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: const Icon(Icons.clear_rounded),
                              iconSize: 37,
                              color: const Color(0xFF0268B2),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          const Text(
                            'إضافة بطاقة',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'NotoBold',
                              fontSize: 21,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF0268B2),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'نقبل',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF0268B2),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Image.asset('assets/icons/payWays.png', width: 200),
                      const SizedBox(height: 15),
                      const Text(
                        'رقم البطاقة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF0268B2),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Container(
                        margin: const EdgeInsets.only(left: 17),
                        width: double.infinity,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFADEEFE),
                        ),
                        child: const TextField(
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF54B9FF),
                          ),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            // isDense: true, // Added this
                            contentPadding: EdgeInsets.only(
                                bottom: 11, left: 5, right: 5), // Added this
                            hintText: 'أدخل رقم البطاقة',
                            hintStyle: TextStyle(
                              fontFamily: 'NotoBold',
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF54B9FF),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                child: const Text(
                                  'CVV',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'NotoBold',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF0268B2),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 7),
                              Container(
                                margin: const EdgeInsets.only(left: 17),
                                width: 163,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xFFADEEFE),
                                ),
                                child: const TextField(
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF54B9FF),
                                  ),
                                  maxLength: 3,
                                  textAlign: TextAlign.end,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    // isDense: true, // Added this
                                    contentPadding: EdgeInsets.only(
                                        bottom: 11,
                                        left: 5,
                                        right: 5), // Added this
                                    hintText: 'رمز الأمان',
                                    hintStyle: TextStyle(
                                      fontFamily: 'NotoBold',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF54B9FF),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'تاريخ انتهاء الصلاحية:',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'NotoBold',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF0268B2),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: 163,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xFFADEEFE),
                                ),
                                child: TextField(
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF54B9FF),
                                  ),
                                  inputFormatters: [maskFormatter],
                                  textAlign: TextAlign.end,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    // isDense: true, // Added this
                                    contentPadding: EdgeInsets.only(
                                        bottom: 11,
                                        left: 5,
                                        right: 5), // Added this
                                    hintText: 'MM/YY',
                                    hintStyle: TextStyle(
                                      fontFamily: 'NotoBold',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF54B9FF),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        margin: const EdgeInsets.only(left: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            MySwitcher(),
                            Text(
                              'تذكر هذه البطاقة',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF0268B2),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children:[outlineText(context, 'إضافة البطاقة', () {
                            Navigator.pushNamed(context, '/successPay');
                          }, top: 9.0, right: 20.0, size:13.0)]
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

var maskFormatter = MaskTextInputFormatter(
    // mask: '+# (###) ###-##-##',
    mask: '##/##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);
