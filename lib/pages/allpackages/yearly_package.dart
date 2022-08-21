import 'package:flutter/material.dart';
import '../components/styledWidgets/styled_container.dart';
import 'daliy_package.dart';

class YearlyPackage extends StatelessWidget {
  const YearlyPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF0268B2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 18),
              paymentHeader(context),
              const SizedBox(height: 230),
              package(context, 'الباقة السنوية', 500, width:26, size:50)
            ]
          ),
        ),
      ),
    );
  }
}