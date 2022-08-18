import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF0268B2),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 18),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(right: 35),
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Image.asset('assets/icons/back.png'),
                iconSize: 40,
                color: const Color(0xFFACF0FF),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              children: const [
            Text(
              'صفحة',
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                height: 0.1,
                fontFamily: 'NotoBold',
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'إدارة الاشتراك',
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontFamily: 'NotoBold',
                color: Colors.white,
                fontSize: 25,
              ),
            ),
              ],
            ),
            const SizedBox(height: 260),
            Container(
              width: double.infinity,
              height: 365,
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
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            'الاشتراك الحالي:',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'NotoBold',
                              fontSize: 21,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF0268B2),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Container(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            'الباقة الشهرية',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'NotoBold',
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0268B2),
                            ),
                          ),
                        ),
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
                                  color: Color(0xFF0268B2),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '50',
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 55,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF0268B2),
                              ),
                            ),
                            const SizedBox(width: 49),
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
                                  color: Color(0xFF0268B2),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Container(
                          margin: const EdgeInsets.only(left: 32),
                          child: TextButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              foregroundColor:
                                  MaterialStateProperty.all(const Color(0xFF0268B2)),
                              side: MaterialStateProperty.all(
                                const BorderSide(color: Color(0xFF0268B2), width: 1),
                              ),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.fromLTRB(20, 9, 20, 9)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/packages');
                            },
                            child: const Text(
                              'تغيير الاشتراك',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'NotoBold',
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
