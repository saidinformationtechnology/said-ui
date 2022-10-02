// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lastsaid/pages/home/sales/sales_widget.dart';

import '../../components/styledWidgets/styled_buttons.dart';

class SaleBill extends StatefulWidget {
  @override
  State<SaleBill> createState() => _SaleBillState();
}

class _SaleBillState extends State<SaleBill> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sales(),
        SizedBox(height:7),
        btnsGroup(context, 'حفظ الفاتورة', 'إلغاء الفاتورة')

        ],
    );
  }
}
