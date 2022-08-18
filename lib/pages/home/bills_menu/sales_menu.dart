import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:lastsaid/pages/home/drawers/sales_drawer.dart';
import 'package:lastsaid/pages/home/bills_menu/bill_table.dart';
import 'dart:ui' as ui;

class SalesMenu extends StatefulWidget {
  const SalesMenu({Key? key}) : super(key: key);

  @override
  State<SalesMenu> createState() => _SalesMenuState();
}

class _SalesMenuState extends State<SalesMenu> {
  String date = DateFormat("yyyy/MM/EEE").format(DateTime.now());
  String time = DateFormat('hh:mm a').format(DateTime.now());

  DateTime fromDate = DateTime(2022, 10, 10);
  DateTime toDate = DateTime(2022, 10, 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const ImageIcon(
              AssetImage('assets/icons/menu.png'),
              color: Color(0xFF0268B2),
              size: 27,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const SizedBox(
          width: 300,
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              'ميني سوبر ماركت',
              style: TextStyle(
                  color: Color(0xFF0268B2),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'NotoBold'),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      drawer: SizedBox(
        width: double.infinity,
        // color: Colors.transparent,
        child: Drawer(
          backgroundColor: const Color.fromARGB(210, 255, 255, 255),
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: const Drawer1(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                      color: Color(0xFF76797B),
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ', $date',
                    style: const TextStyle(
                      color: Color(0xFF76797B),
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: Colors.grey.shade200),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: const Text(
                        'قائمة فواتير المبيعات',
                        style: TextStyle(
                            color: Color(0xFF0268B2),
                            fontSize: 14.0,
                            fontFamily: 'NotoBold'),
                      )),
                ],
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 110,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade200),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: TextField(
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.grey.shade500,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            isDense: true, // Added this
                            contentPadding: const EdgeInsets.only(
                                bottom: 0,
                                top: 1,
                                left: 7,
                                right: 10), // Added this
                            hintText: 'بحث برقم الفاتورة',
                            hintStyle: TextStyle(
                                fontFamily: 'NotoBold',
                                color: Colors.grey.shade500,
                                fontSize: 8),
                            border: InputBorder.none,
                            suffixIconConstraints:
                                const BoxConstraints(minHeight: 17, minWidth: 17),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: ImageIcon(
                                  size: 0.0,
                                  AssetImage('assets/icons/search.png'),
                                  color: Color(0xffABABAB)),
                            ),
                          )),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade200),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x33000000),
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: toDate,
                                  firstDate: DateTime(2021),
                                  lastDate: DateTime(2100));

                              if (newDate == null) return;

                              setState(() {
                                toDate = newDate;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const ImageIcon(
                                  AssetImage('assets/icons/date.png'),
                                  color: Color(0xFF0268B2),
                                  size: 11,
                                ),
                                const SizedBox(width: 2),
                                SizedBox(
                                  height: 15,
                                  child: Text(
                                      '${toDate.year}/${toDate.month}/${toDate.day}',
                                      style: const TextStyle(
                                        fontFamily: 'NotoBold',
                                        color: Color(0xFF0268B2),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Text('إلى',
                            style: TextStyle(
                              fontFamily: 'NotoBold',
                              color: Color(0xFF0268B2),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade200),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () async {
                            DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: fromDate,
                                firstDate: DateTime(2021),
                                lastDate: DateTime(2100));
                            if (newDate == null) return;

                            setState(() {
                              fromDate = newDate;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const ImageIcon(
                                AssetImage('assets/icons/date.png'),
                                color: Color(0xFF0268B2),
                                size: 11,
                              ),
                              const SizedBox(width: 2),
                              SizedBox(
                                height: 15,
                                child: Text(
                                    '${fromDate.year}/${fromDate.month}/${fromDate.day}',
                                    style: const TextStyle(
                                      fontFamily: 'NotoBold',
                                      color: Color(0xFF0268B2),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Text('من',
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Color(0xFF0268B2),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          )),
                    ]),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              billTable(context)
            ],
          ),
        ),
      ),
    );
  }
}
