import 'package:flutter/material.dart';

class ProductEdit extends StatelessWidget {
  const ProductEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 67),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Image.asset('assets/icons/clear.png'),
                          iconSize: 52,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      const Text(
                        'ميني سوبر ماركت',
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
                            fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 165,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        ),
                      ],
                      color: Colors.grey[700]),
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(right: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'تعديل المنتج',
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
                      const SizedBox(height: 6),
                      Container(
                        width: double.infinity,
                        height: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            children: [
                              const SizedBox(height: 30),
                              Container(
                                width: double.infinity,
                                height: 31,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  textAlign: TextAlign.end,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    isDense: true, // Added this
                                    contentPadding: const EdgeInsets.only(
                                        bottom: 0,
                                        top: 2,
                                        left: 7,
                                        right: 8), // Added this
                                    hintText: 'باركود المنتج',
                                    hintStyle: TextStyle(
                                        fontFamily: 'NotoBold',
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              Container(
                                width: double.infinity,
                                height: 31,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  textAlign: TextAlign.end,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    isDense: true, // Added this
                                    contentPadding: const EdgeInsets.only(
                                        bottom: 0,
                                        top: 2,
                                        left: 7,
                                        right: 8), // Added this
                                    hintText: 'اسم المنتج',
                                    hintStyle: TextStyle(
                                        fontFamily: 'NotoBold',
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              Container(
                                width: double.infinity,
                                height: 31,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  textAlign: TextAlign.end,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    isDense: true, // Added this
                                    contentPadding: const EdgeInsets.only(
                                        bottom: 0,
                                        top: 2,
                                        left: 7,
                                        right: 8), // Added this
                                    hintText: 'سعر المنتج',
                                    hintStyle: TextStyle(
                                        fontFamily: 'NotoBold',
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 68),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(4),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromRGBO(50, 185, 215, 1)),
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(
                                        const EdgeInsets.symmetric(vertical: 3)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    height: 33,
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'حفظ التعديل',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'NotoBold',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
