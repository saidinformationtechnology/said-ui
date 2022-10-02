import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:lastsaid/pages/home/purchases/purchase_bill.dart';
import 'package:lastsaid/pages/home/sales/sale_bill.dart';

import '../../services/constrants.dart';
import '../components/styledWidgets/styled_container.dart';
import 'drawers/purchases_drawer.dart';
import 'drawers/sales_drawer.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

String date = DateFormat("yyyy/MM/EEE").format(DateTime.now());
String time = DateFormat('hh:mm a').format(DateTime.now());

TableRow buildRow(List<String> cells) => TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell)),
        );
      }).toList(),
    );

class _UserHomeState extends State<UserHome> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const ImageIcon(
              AssetImage('assets/icons/menu.png'),
              color: primaryBlue,
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
                  color: primaryBlue,
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
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Column(
                children: [
                  if (currentIndex == 1) ...[
                    const SalesDrawer(),
                  ] else ...[
                    const PurchasesDrawer(),
                  ]
                ],
              )),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                      color: lightGray,
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ', $date',
                    style: const TextStyle(
                      color: lightGray,
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: height*0.18,
                decoration: BoxDecoration(
                  color: lightGray,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(height: 13),
              CustomContainer(
                width: double.infinity,
                height: 35,
                round: 10,
                child: TextField(
                  style: TextStyle(
                    fontFamily: 'NotoBold',
                    color: Colors.grey.shade500,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      isDense: true, // Added this
                      contentPadding: const EdgeInsets.only(
                          bottom: 0, top: 6, left: 7, right: 8), // Added this
                      hintText: '... بحث باسم المنتج او رقم الباركود',
                      hintStyle: TextStyle(
                          fontFamily: 'NotoBold',
                          color: Colors.grey.shade500,
                          fontSize: 11.5),
                      border: InputBorder.none,
                      suffixIconConstraints:
                          const BoxConstraints(minHeight: 33, minWidth: 30),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: ImageIcon(AssetImage('assets/icons/search.png'),
                            color: Color(0xffABABAB)),
                      )),
                ),
              ),
              const SizedBox(height: 15),
              DefaultTabController(
                initialIndex: 1,
                length: 2,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 37,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            color: transparentBlack,
                            offset: Offset(0, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TabBar(
                          onTap: (index) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          indicator: BoxDecoration(
                            color: cyan,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelColor: whiteColor,
                          unselectedLabelColor: primaryBlue,
                          tabs: const [
                            Tab(
                              child: Text('فاتورة مشتريات',
                                  style: TextStyle(
                                    fontFamily: 'NotoBold',
                                    fontSize: 11,
                                  )),
                            ),
                            Tab(
                              child: Text(
                                'فاتورة مبيعات',
                                style: TextStyle(
                                  fontFamily: 'NotoBold',
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: height*0.50,
                      child: TabBarView(
                        children: [PurchaseBill(), SaleBill()],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
