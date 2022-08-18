import 'package:flutter/material.dart';

class Packages extends StatelessWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'said Lite',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0268B2),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              ),
              const Text(
                'اختر الباقة المناسبة',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NotoBold'),
              ),
              const SizedBox(height: 10),
              Container(
                width: 186,
                height: 215,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 17),
                    const Text(
                      "الباقة اليومية",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'NotoBold',
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        color: Color(0xFF0268B2),
                        thickness: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            " ر.س  ",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'NotoBold',
                              color: Color(0xFF0268B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "2 ",
                            style: TextStyle(
                              fontSize: 60,
                              color: Color(0xFF0268B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        textAlign: TextAlign.center,
                        " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                        style: TextStyle(
                          fontFamily: 'NotoRegular',
                          height: 1.6,
                          fontSize: 10,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size.zero),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(50, 185, 215, 1)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(33, 4, 33, 4)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      onPressed: () {Navigator.pushNamed(context, '/daily');},
                      child: const Text(
                        'اشتراك',
                        style: TextStyle(
                          fontSize: 7,
                          fontFamily: 'NotoBold',
                          color: Color(0xFF0268B2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 186,
                height: 215,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 17),
                    const Text(
                      "الباقة الشهرية",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'NotoBold',
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        color: Color(0xFF0268B2),
                        thickness: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            " ر.س  ",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'NotoBold',
                              color: Color(0xFF0268B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "50",
                            style: TextStyle(
                              fontSize: 55,
                              color: Color(0xFF0268B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        textAlign: TextAlign.center,
                        " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                        style: TextStyle(
                          fontFamily: 'NotoRegular',
                          height: 1.6,
                          fontSize: 10,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size.zero),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(50, 185, 215, 1)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(33, 4, 33, 4)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/monthly');
                      },
                      child: const Text(
                        'اشتراك',
                        style: TextStyle(
                          fontSize: 7,
                          fontFamily: 'NotoBold',
                          color: Color(0xFF0268B2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Hover(
                child: Container(
                  width: 186,
                  height: 215,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 17),
                      const Text(
                        "الباقة السنوية",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NotoBold',
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          color: Color(0xFF0268B2),
                          thickness: 2,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              " ر.س  ",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'NotoBold',
                                color: Color(0xFF0268B2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "500",
                              style: TextStyle(
                                fontSize: 50,
                                color: Color(0xFF0268B2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        child: Text(
                          textAlign: TextAlign.center,
                          " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                          style: TextStyle(
                            fontFamily: 'NotoRegular',
                            height: 1.6,
                            fontSize: 10,
                            color: Color(0xFF0268B2),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size.zero),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(50, 185, 215, 1)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.fromLTRB(33, 4, 33, 4)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/yearly');
                        },
                        child: const Text(
                          'اشتراك',
                          style: TextStyle(
                            fontSize: 7,
                            fontFamily: 'NotoBold',
                            color: Color(0xFF0268B2),
                          ),
                        ),
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

class Hover extends StatefulWidget {
  final Widget child;

  const Hover({Key? key,
  required this.child,

  }) : super(key:key);
  
  @override
  State<Hover> createState() => _HoverState();
}

class _HoverState extends State<Hover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: const Duration(microseconds: 200),
            transform: transform,
            child: widget.child));
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
