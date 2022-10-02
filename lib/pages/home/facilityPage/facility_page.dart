import 'package:flutter/material.dart';
import 'package:lastsaid/pages/home/support.dart';

import '../../../services/constrants.dart';

class FacilityPage extends StatefulWidget {
  const FacilityPage({Key? key}) : super(key: key);

  @override
  State<FacilityPage> createState() => _FacilityPageState();
}

class _FacilityPageState extends State<FacilityPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryBlue,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height*0.20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ), //BorderRadius.vertical
              color: thirdWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: transparentBlack,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'صفحة المنشأة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          color: primaryBlue,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.30),
          Container(
            width: double.infinity,
            height: height*0.426,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
              color: thirdWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: transparentBlack,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 9),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(right: 10, left: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.chevron_left,
                          color: primaryBlue,
                          size: 28,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Text(
                                'معلومات المنشأة',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'NotoBold',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: primaryBlue,
                                ),
                              ),
                            ),
                            const ImageIcon(
                              AssetImage('assets/icons/store.png'),
                              color: cyan,
                              size: 27,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: cyan,
                  thickness: 2.5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/subscription');
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(right: 10, left: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.chevron_left,
                          color: primaryBlue,
                          size: 28,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Text(
                                'إدارة الاشتراك',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'NotoBold',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: primaryBlue,
                                ),
                              ),
                            ),
                            const ImageIcon(
                              AssetImage('assets/icons/box.png'),
                              color: cyan,
                              size: 27,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: cyan,
                  thickness: 2.5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(right: 10, left: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.chevron_left,
                          color: primaryBlue,
                          size: 28,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Text(
                                'حول البرنامج',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'NotoBold',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: primaryBlue,
                                ),
                              ),
                            ),
                            const ImageIcon(
                              AssetImage('assets/icons/about.png'),
                              color: cyan,
                              size: 27,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: cyan,
                  thickness: 2.5,
                ),
                const SizedBox(height: 78),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: followUs(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
