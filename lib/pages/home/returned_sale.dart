// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lastsaid/pages/home/sales/sales_widget.dart';

class ReturnedSale extends StatefulWidget {
  const ReturnedSale({Key? key}) : super(key: key);

  @override
  State<ReturnedSale> createState() => _ReturnedSaleState();
}

String date = DateFormat("yyyy/MM/EEE").format(DateTime.now());
String time = DateFormat('hh:mm a').format(DateTime.now());

class _ReturnedSaleState extends State<ReturnedSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              icon: Image.asset('assets/icons/clear1.png'),
              iconSize: 40,
              // color: Color(0xFF0268B2),
              onPressed: () {
                Navigator.pop(context);
              }),
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
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFF76797B),
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: Colors.grey.shade200),
                ),
              ),
              const SizedBox(height: 13),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(50, 185, 215, 1),
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: Colors.grey.shade200),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: const Text(
                  'فاتورة مبيعات رقم #54655',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'NotoBold'),
                ),
              ),
              const SizedBox(height: 15),
              Sales(),
              const SizedBox(height: 15),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size.zero),
                      elevation: MaterialStateProperty.all(3),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(50, 185, 215, 1)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(72, 6, 72, 6)),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'إلغاء',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoBold',
                          color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size.zero),
                      elevation: MaterialStateProperty.all(3),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xFF0268B2)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(53, 6, 53, 6)),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'حفظ وطباعة',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoBold',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
