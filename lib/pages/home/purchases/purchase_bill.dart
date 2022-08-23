// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_buttons.dart';
import 'package:lastsaid/pages/home/purchases/purchase_widget.dart';

class PurchaseBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Purchases(),
        SizedBox(height: 7),
        btnsGroup(context, 'حفظ الفاتورة', 'إلغاء الفاتورة')
        ],
    );
  }
}
