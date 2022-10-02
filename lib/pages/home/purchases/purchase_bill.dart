// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_buttons.dart';
import 'package:lastsaid/pages/home/purchases/purchase_widget.dart';

class PurchaseBill extends StatefulWidget {
  @override
  State<PurchaseBill> createState() => _PurchaseBillState();
}

class _PurchaseBillState extends State<PurchaseBill> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Purchases(),
        SizedBox(height: 10.0),
        btnsGroup(context, 'حفظ الفاتورة', 'إلغاء الفاتورة')
        ],
    );
  }
}