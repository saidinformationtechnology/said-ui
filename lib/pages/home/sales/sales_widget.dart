import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:lastsaid/pages/components/Dilalogs/dilalogs_widgets.dart';
import 'package:lastsaid/pages/components/number_roller.dart';
import 'package:lastsaid/pages/home/sales/bill_class.dart';
import 'package:lastsaid/pages/home/sales/sale_list.dart';

import 'dart:ui' as ui;

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  List<Item> items = List.of(allItems);
  void deleteDialog(int index) {
    showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                              backgroundColor:
                                  MaterialStateProperty.all(const Color(0xFF0268B2)),
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
                              Navigator.pop(context, true);
                            },
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(const Color(0xFF0268B2)),
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
                              setState(() => items.removeAt(index));
                              Navigator.pop(context, false);
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

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade200),
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'السعر',
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        fontSize: 11,
                        color: Color.fromRGBO(50, 185, 215, 1),
                      ),
                    ),
                    Text(
                      'الكمية',
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        fontSize: 11,
                        color: Color.fromRGBO(50, 185, 215, 1),
                      ),
                    ),
                    Text(
                      'العنصر',
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        fontSize: 11,
                        color: Color.fromRGBO(50, 185, 215, 1),
                      ),
                    ),
                  ]),
            ),
          ),
          myDivider(context),
          const SizedBox(height: 2),
          SizedBox(
            height: 182,
            child: Scrollbar(
              thumbVisibility: true,
              controller: controller,
              child: ListView.builder(
                controller: controller,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Slidable(
                    startActionPane:
                        ActionPane(motion: const StretchMotion(), children: [
                      SlidableAction(
                        onPressed: ((context) => {deleteDialog(index)}),
                        backgroundColor: const Color(0xffBE3939),
                        icon: Icons.do_disturb_on_rounded,
                        foregroundColor: Colors.white,
                      ),
                    ]),
                    endActionPane:
                        ActionPane(motion: const StretchMotion(), children: [
                      SlidableAction(
                        onPressed: ((context) => {deleteDialog(index)}),
                        backgroundColor: const Color(0xffBE3939),
                        icon: Icons.do_disturb_on_rounded,
                        foregroundColor: Colors.white,
                      ),
                    ]),
                    child: buildListTile(item),
                  );
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              children: [
                Container(
                  color: const Color(0xFF0268B2),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        width: 119,
                        height: 24,
                        alignment: Alignment.center,
                        child: const Text(
                          'المجموع النهائي',
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            fontSize: 11,
                            color: Color.fromRGBO(50, 185, 215, 1),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 24,
                        alignment: Alignment.center,
                        child: const Text(
                          'الضريبة',
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            fontSize: 11,
                            color: Color.fromRGBO(50, 185, 215, 1),
                          ),
                        ),
                      ),
                      Container(
                        width: 119,
                        height: 24,
                        alignment: Alignment.center,
                        child: const Text(
                          'الإجمالي',
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            fontSize: 11,
                            color: Color.fromRGBO(50, 185, 215, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 119,
                      child: const Text(
                        '5.4625',
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          fontSize: 14,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      child: const Text(
                        '0.7125',
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          fontSize: 14,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 119,
                      child: const Text(
                        '4.75',
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          fontSize: 14,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onDismissed(int index) {
    setState(() => items.removeAt(index));
  }

  Widget buildListTile(Item item) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (c) => BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: AlertDialog(
                          backgroundColor: const Color.fromRGBO(50, 185, 215, 1),
                          insetPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          actions: [editPrice(context)],
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            item.itemPrice.toString(),
                            style: const TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF76797B)),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'السعر:',
                            textDirection: ui.TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8F8F8F)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            item.task.toString(),
                            style: const TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF76797B)),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'الضريبة:',
                            textDirection: ui.TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8F8F8F)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            item.total.toString(),
                            style: const TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF76797B)),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'الإجمالي:',
                            textDirection: ui.TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8F8F8F)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 60, child: NumberRoller()),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (c) => BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: AlertDialog(
                          backgroundColor: const Color.fromRGBO(50, 185, 215, 1),
                          insetPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          actions: [editItem(context)],
                        ),
                      ),
                    );
                  },
                  child: Wrap(
                    spacing: 6,
                    children: [
                      Text(
                        item.total.toString(),
                        style: const TextStyle(
                            fontFamily: 'NotoBold',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF76797B)),
                      ),
                      Text(
                        item.unit,
                        style: const TextStyle(
                            fontFamily: 'NotoBold',
                            fontSize: 11,
                            color: Color(0xFF76797B)),
                      ),
                      Text(
                        item.name,
                        textDirection: ui.TextDirection.rtl,
                        style: const TextStyle(
                            fontFamily: 'NotoBold',
                            fontSize: 11,
                            color: Color(0xFF76797B)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          myDivider(context),
          const SizedBox(height: 2),
        ],
      );
}

Widget myDivider(BuildContext context) {
  return Container(
    height: 0.9,
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      boxShadow: const [
        BoxShadow(
          blurRadius: 3,
          color: Color(0x33000000),
          offset: Offset(0, 1),
        ),
      ],
    ),
  );
}
