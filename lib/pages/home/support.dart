import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF0268B2),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 156,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
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
                        'الدعم الفني',
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
          const SizedBox(height: 125),
          Container(
            width: double.infinity,
            height: 461,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              //BorderRadius.vertical
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                children: [
                  const SizedBox(height: 36),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: const Color(0xFF0268B2), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'المحادثة المباشرة',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(50, 185, 215, 1),
                              ),
                            ),
                            SizedBox(width: 13),
                            ImageIcon(
                              AssetImage('assets/icons/chat.png'),
                              color: Color(0xFF0268B2),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/message');
                    },
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: const Color(0xFF0268B2), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'اترك رسالتك',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(50, 185, 215, 1),
                              ),
                            ),
                            SizedBox(width: 13),
                            ImageIcon(
                              AssetImage('assets/icons/text.png'),
                              color: Color(0xFF0268B2),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/questions');
                    },
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: const Color(0xFF0268B2), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'الأسئلة الشائعة',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(50, 185, 215, 1),
                              ),
                            ),
                            SizedBox(width: 13),
                            ImageIcon(
                              AssetImage('assets/icons/question-circle.png'),
                              color: Color(0xFF0268B2),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: const Color(0xFF0268B2), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'تواصل معنا واتساب',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(50, 185, 215, 1),
                              ),
                            ),
                            SizedBox(width: 13),
                            ImageIcon(
                              AssetImage('assets/icons/whatsapp.png'),
                              color: Color(0xFF0268B2),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  followUs(context)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget followUs(BuildContext context) {
  return Column(
    children: [
      const Text(
        'تابعنا على قنوات التواصل التالية:',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontFamily: 'NotoBold',
          color: Color(0xFF0268B2),
          fontSize: 14,
        ),
      ),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/instagram.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/twitter.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/linkedin.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/youtube.png'),
                color: Color.fromRGBO(50, 185, 215, 1),
                size: 29,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
