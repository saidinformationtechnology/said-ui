import 'package:flutter/material.dart';
import '../../services/constrants.dart';
import '../components/styledWidgets/styled_container.dart';
import 'packageWidget.dart';

class YearlyPackage extends StatefulWidget {
  const YearlyPackage({Key? key}) : super(key: key);

  @override
  State<YearlyPackage> createState() => _YearlyPackageState();
}

class _YearlyPackageState extends State<YearlyPackage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: primaryBlue,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(children: [
            SizedBox(height: height * 0.02),
            paymentHeader(context),
            SizedBox(height: height * 0.30),
            package(context, 'الباقة السنوية', 500, width: 26, size: 50)
          ]),
        ),
      ),
    );
  }
}
