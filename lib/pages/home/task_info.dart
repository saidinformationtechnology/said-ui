import 'package:flutter/material.dart';

import '../components/styledWidgets/styled_texts.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0368B2),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 85),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'ميني سوبر ماركت',
                      textAlign: TextAlign.end,
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
                    const Text(
                      '09:41 pm, 2022/10/Fri',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            ),
                          ],
                          fontFamily: 'NotoBold',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Container(
                width: double.infinity,
                height: 80,
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
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: customText(
                            context, '23,568', 19, false, 0xFF0268B2,
                            align: TextAlign.start, weight: FontWeight.bold),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15),
                          width: 0.8,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(51, 132, 130, 130),
                          ),
                          height: 80),
                      customText(
                          context, 'إجمالي  الإيرادات', 17, false, 0xFF0268B2,
                          align: TextAlign.start, weight: FontWeight.bold),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
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
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: customText(
                            context, '23,568', 19, false, 0xFF0268B2,
                            align: TextAlign.start, weight: FontWeight.bold),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 29),
                          width: 0.8,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(51, 132, 130, 130),
                          ),
                          height: 80),
                      customText(
                          context, 'إجمالي المصروفات', 17, false, 0xFF0268B2,
                          align: TextAlign.start, weight: FontWeight.bold),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              printIcon(context),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // color:Colors.red,
                        width: 100,
                        child: customText(
                            context, '23,568', 19, false, 0xFF0268B2,
                            align: TextAlign.start, weight: FontWeight.bold),
                      ),
                      Container(
                          width: 0.8,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(51, 132, 130, 130),
                          ),
                          height: 80),
                      customText(
                          context, 'إجمالي الضريبة', 17, false, 0xFF0268B2,
                          align: TextAlign.start, weight: FontWeight.bold),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              printIcon(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget printIcon(BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Icon(
          Icons.print_sharp,
          color: Colors.white,
          size: 24,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: customText(context, 'طباعة', 15, false, 0xFFFFFFFF,
              align: TextAlign.start),
        ),
      ],
    ),
  );
}