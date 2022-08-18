import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: Image.asset('assets/icons/clear.png'),
                          iconSize: 52,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      const Text(
                        'الأسئلة الشائعة :',
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                        height:3,
                          fontFamily: 'NotoBold',
                          color: Color.fromRGBO(50, 185, 215, 1),
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text(
                          'ماهو تطبيق Said Light ؟',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  textDirection: TextDirection.rtl,
                                  'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.',
                                  style: TextStyle(
                                    fontFamily: 'NotoRegular',
                                    color: Color(0xFF0268B2),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Exit',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                50, 185, 215, 1))),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Icon(Icons.minimize_rounded,
                              color: Colors.white, size: 30)),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text(
                          'ماهي خدمات هذا التطبيق؟',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  textDirection: TextDirection.rtl,
                                  'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.',
                                  style: TextStyle(
                                    fontFamily: 'NotoRegular',
                                    color: Color(0xFF0268B2),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Exit',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                50, 185, 215, 1))),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Icon(Icons.minimize_rounded,
                              color: Colors.white, size: 30)),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text(
                          'هل بياناتي آمنة؟',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content:  Text(
                                  textDirection: TextDirection.rtl,
                                  'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.',
                                  style: TextStyle(
                                    fontFamily: 'NotoRegular',
                                    color: Color(0xFF0268B2),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Exit',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                50, 185, 215, 1))),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Icon(Icons.minimize_rounded,
                              color: Colors.white, size: 30)),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text(
                          'هل يمكنني استرداد المبلغ المدفوع؟',
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content:  Text(
                                  textDirection: TextDirection.rtl,
                                  'Said Light هو برنامج محاسبي مبسّط لإدارة الحسابات.',
                                  style: TextStyle(
                                    fontFamily: 'NotoRegular',
                                    color: Color(0xFF0268B2),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Exit',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromRGBO(
                                                50, 185, 215, 1))),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Icon(Icons.minimize_rounded,
                              color: Colors.white, size: 30)),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 30),
                  child: const Text(
                    'البيانات الإلزامية من العميل:',
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      color: Color.fromRGBO(50, 185, 215, 1),
                      fontSize: 22,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'الاسم',
                            style: TextStyle(
                              fontFamily: 'NotoBold',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 10, 10, 10),
                              child: Icon(Icons.brightness_1, size: 21)),
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'الإيميل',
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 10, 10, 10),
                                child: Icon(Icons.brightness_1, size: 21)),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'رقم الجوال',
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 10, 10, 10),
                                child: Icon(Icons.brightness_1, size: 21)),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'المدينة',
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 10, 10, 10),
                                child: Icon(Icons.brightness_1, size: 21)),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'النشاط',
                            style: TextStyle(
                              fontFamily: 'NotoBold',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 10, 10, 10),
                              child: Icon(Icons.brightness_1, size: 21)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
