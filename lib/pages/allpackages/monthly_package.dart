import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/dropdown.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_buttons.dart';

import '../../services/constrants.dart';
import '../components/styledWidgets/styled_container.dart';

class MonthlyPackage extends StatefulWidget {
  const MonthlyPackage({Key? key}) : super(key: key);

  @override
  State<MonthlyPackage> createState() => _MonthlyPackageState();
}

class _MonthlyPackageState extends State<MonthlyPackage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: primaryBlue,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: height * 0.02),
              paymentHeader(context),
              SizedBox(height: height * 0.30),
              Container(
                width: double.infinity,
                height: 450,
                decoration: const BoxDecoration(
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: transparentBlack,
                        offset: Offset(0, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(22),
                        topLeft: Radius.circular(22))),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(right: 32),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(alignment: Alignment.centerLeft, children: [
                                Image.asset(
                                  'assets/images/flag.png',
                                  width: 90,
                                  height: 30,
                                ),
                                const Center(
                                  child: Text(
                                    'الباقة الشائعة',
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color: primaryBlue,
                                    ),
                                  ),
                                )
                              ]),
                              const Text(
                                'الباقة الشهرية',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'NotoBold',
                                  fontSize: 21,
                                  fontWeight: FontWeight.w800,
                                  color: primaryBlue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 40),
                                child: const Text(
                                  'ر.س',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'NotoBold',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: primaryBlue,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '50',
                                style: TextStyle(
                                  fontFamily: 'NotoBold',
                                  fontSize: 50,
                                  fontWeight: FontWeight.w800,
                                  color: primaryBlue,
                                ),
                              ),
                              const SizedBox(width: 54),
                              const SizedBox(
                                width: 160,
                                height: 50,
                                child: Text(
                                  'باقة سائد لايت المحاسبي الشهري',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'NotoBold',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800,
                                    color: primaryBlue,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              'تجدد الباقة تلقائياً عند نهاية الاشتراك',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'NotoBold',
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: primaryBlue,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            margin: const EdgeInsets.only(left: 32),
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: cyanLight,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    'تطبيق',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'NotoBold',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800,
                                      color: primaryBlue,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 2,
                                  height: 25,
                                  color: Colors.grey.shade700,
                                ),
                                const SizedBox(
                                  width: 100,
                                  height: 35,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      // isDense: true, // Added this
                                      contentPadding: EdgeInsets.only(
                                          bottom: 11,
                                          left: 3,
                                          right: 3), // Added this
                                      hintText: 'كود الاشتراك',
                                      hintStyle: TextStyle(
                                        fontFamily: 'NotoBold',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w800,
                                        color: secondaryBlue,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              'الدفع عبر:',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: primaryBlue,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(left: 32),
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: cyanLight,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                DropdownMenu(),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                              margin: const EdgeInsets.only(left: 32),
                              child: outlineText(context, 'إتمام الدفع', () {
                                Navigator.pushNamed(context, '/successPay');
                              }, top: 9, right: 20)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
