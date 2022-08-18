// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lastsaid/pages/home/purchases/purchase_widget.dart';

class PurchaseBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Purchases(),
        SizedBox(height: 7),
        Row(
          children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size.zero),
            elevation: MaterialStateProperty.all(2),
            backgroundColor: MaterialStateProperty.all(
                Color.fromRGBO(50, 185, 215, 1)),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(
                EdgeInsets.fromLTRB(50, 6, 50, 6)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
          child: Text(
            'إلغاء الفاتورة',
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
            elevation: MaterialStateProperty.all(2),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Color(0xFF0268B2)),
            padding: MaterialStateProperty.all(
                EdgeInsets.fromLTRB(49, 6, 49, 6)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          child: Text(
            'حفظ الفاتورة',
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
    );
  }
}
