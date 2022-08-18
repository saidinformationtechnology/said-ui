import 'package:flutter/material.dart';
import 'package:lastsaid/pages/home/support.dart';

class FacilityPage extends StatelessWidget {
  const FacilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF0268B2),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ), //BorderRadius.vertical
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
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
                          color: Color(0xFF0268B2),
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 232),
          Container(
            width: double.infinity,
            height: 350,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
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
                          color: Color(0xFF0268B2),
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
                                  color: Color(0xFF0268B2),
                                ),
                              ),
                            ),
                            const ImageIcon(
                              AssetImage('assets/icons/store.png'),
                              color: Color.fromRGBO(50, 185, 215, 1),
                              size: 27,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(50, 185, 215, 1),
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
                          color: Color(0xFF0268B2),
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
                                  color: Color(0xFF0268B2),
                                ),
                              ),
                            ),
                            const ImageIcon(
                              AssetImage('assets/icons/box.png'),
                              color: Color.fromRGBO(50, 185, 215, 1),
                              size: 27,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(50, 185, 215, 1),
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
                          color: Color(0xFF0268B2),
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
                                  color: Color(0xFF0268B2),
                                ),
                              ),
                            ),
                            const ImageIcon(
                              AssetImage('assets/icons/about.png'),
                              color: Color.fromRGBO(50, 185, 215, 1),
                              size: 27,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(50, 185, 215, 1),
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
