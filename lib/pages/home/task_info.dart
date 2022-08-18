import 'package:flutter/material.dart';

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
                      const SizedBox(
                        width: 100,
                        child: Text(
                          '23,568',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: 'NotoBold',
                              color: Color(0xFF0268B2),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15),
                          width: 0.8,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(51, 132, 130, 130),
                          ),
                          height: 80),
                      const Text(
                        'إجمالي  الإيرادات',
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Color(0xFF0268B2),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
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
                      const SizedBox(
                        // color:Colors.red,
                        width: 100,
                        child: Text(
                          '23,568',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: 'NotoBold',
                              color: Color(0xFF0268B2),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 29),
                          width: 0.8,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(51, 132, 130, 130),
                          ),
                          height: 80),
                      const Text(
                        'إجمالي المصروفات',
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Color(0xFF0268B2),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.print_sharp,
                    color: Colors.white,
                    size: 24,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'طباعة',
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                      const SizedBox(
                        // color:Colors.red,
                        width: 100,
                        child: Text(
                          '23,568',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: 'NotoBold',
                              color: Color(0xFF0268B2),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          width: 0.8,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(51, 132, 130, 130),
                          ),
                          height: 80),
                      const Text(
                        'إجمالي الضريبة',
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Color(0xFF0268B2),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.print_sharp,
                    color: Colors.white,
                    size: 24,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'طباعة',
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
