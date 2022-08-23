import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/Dilalogs/dilalogs_widgets.dart';

import '../styledWidgets/styled_texts.dart';

class Dialogs {
  static Future<void> messageDialog(parentContext) {
    return showDialog(
      context: parentContext,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            content: SizedBox(
              height: 80,
              child: Column(
                children: const [
                  Text(
                    'تم استلام رسالتك',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoRegular',
                      color: Color(0xFF0268B2),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'وسنقوم بالرد عليك في أقرب فرصة',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoRegular',
                      color: Color(0xFF0268B2),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Center(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(50, 185, 215, 1)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(100, 5, 100, 5)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'حسنا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoBold',
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<void> supportDialog(parentContext) {
    return showDialog(
      context: parentContext,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            backgroundColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            actions: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 480),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          ' 00966 55 444 3333   مكالمة',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(50, 185, 215, 1),
                            fontFamily: 'NotoBold',
                          ),
                        ), // <-- Text
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          // <-- Icon
                          Icons.phone_enabled_sharp,
                          color: Color(0xFF0268B2),
                          size: 23.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, // <-- Text

                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 127, vertical: 15)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    child: const Text(
                      'الغاء',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(50, 185, 215, 1),
                        fontFamily: 'NotoBold',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<void> editDialog(parentContext) {
    return showDialog(
      context: parentContext,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            backgroundColor: const Color.fromRGBO(50, 185, 215, 1),
            insetPadding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 4),
                    const Text(
                      'التعديل على:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        height: 1.5,
                        color: Colors.white,
                        fontFamily: 'NotoBold',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(3),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF0268B2)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.fromLTRB(37, 5, 37, 5)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                          child: const Text(
                            'السعر',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'NotoBold',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (c) => BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: AlertDialog(
                                  backgroundColor:
                                      const Color.fromRGBO(50, 185, 215, 1),
                                  insetPadding:
                                      const EdgeInsets.fromLTRB(50, 0, 50, 0),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  actions: [editPrice(context)],
                                ),
                              ),
                            );
                          },
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(3),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF0268B2)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.fromLTRB(37, 5, 37, 5)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                          child: const Text(
                            'العنصر',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'NotoBold',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (c) => BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: AlertDialog(
                                  backgroundColor:
                                      const Color.fromRGBO(50, 185, 215, 1),
                                  insetPadding:
                                      const EdgeInsets.fromLTRB(50, 0, 50, 0),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  actions: [editItem(context)],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xFF0268B2)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(107, 5, 107, 5)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        )),
                      ),
                      child: const Text(
                        'الغاء',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NotoBold',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<void> addProductDialog(parentContext, String text) {
    return showDialog(
      context: parentContext,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            actions: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(50, 185, 215, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(17),
                        topLeft: Radius.circular(17),
                      ),
                    ),
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
                    width: double.infinity,
                    child: customText(context, text, 17, false, 0xFFFFFFFF,
                        weight: FontWeight.w800, align: TextAlign.center),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(2.3),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(
                              const Color(0xFF0268B2)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(vertical: 11)),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(17),
                                bottomLeft: Radius.circular(17),
                              ),
                            ),
                          ),
                        ),
                        child: const Text(
                          'حسنًا',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'NotoBold',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<void> deleteDialog(
      parentContext, int index, Function yes, Function no) {
    return showDialog(
        context: parentContext,
        builder: (context) {
          return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: AlertDialog(
                backgroundColor: const Color(0xff32BAD7),
                insetPadding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                title: const Text(
                  'هل تريد حذف العنصر من الفاتورة ؟',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    height: 1.5,
                    color: Colors.white,
                    fontFamily: 'NotoBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                actions: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF0268B2)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.fromLTRB(50, 5, 50, 5)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              )),
                            ),
                            child: const Text(
                              'لا',
                              style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'NotoBold',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              no();
                            },
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF0268B2)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.fromLTRB(50, 5, 50, 5)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                              ),
                            ),
                            child: const Text(
                              'نعم',
                              style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'NotoBold',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              yes();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
