// @dart=2.9

import 'package:flutter/material.dart';

import 'pages/allpackages/add_card.dart';
import 'pages/allpackages/daliy_package.dart';
import 'pages/allpackages/monthly_package.dart';
import 'pages/allpackages/packages.dart';
import 'pages/allpackages/paymentsuccess.dart';
import 'pages/allpackages/yearly_package.dart';
import 'pages/components/bottom_navigator.dart';
import 'pages/home/product_info.dart';
import 'pages/home/bills_menu/sales_menu.dart';
import 'pages/home/facilityPage/about_app.dart';
import 'pages/home/facilityPage/subscription_managment.dart';
import 'pages/home/message.dart';
import 'pages/home/questions.dart';
import 'pages/home/returned_sale.dart';
import 'pages/login/facility_input.dart';
import 'pages/login/phone_input.dart';
import 'pages/login/terms.dart';
import 'pages/login/verification.dart';
import 'pages/starter/splash.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {

        // -----  Home routes ----
        '/': (context) => const Splash(),
        '/subscription': (context) => const Subscription(),

        // ----- User Home routes ----
        '/userHome': (context) => const MyBottomNavigation(),
        '/message': (context) => const Message(),
        '/questions': (context) => const Questions(),
        '/about': (context) => const AboutApp(),

        '/addProduct': (context) => const ProductInfo(),
        '/salesMenu': (context) => const SalesMenu(),
        '/returned': (context) => const ReturnedSale(),

        // -----  Login routes ----
        '/phoneinput': (context) => const PhoneInput(),
        '/facilityinput': (context) => const FacilityInput(),
        '/verification': (context) => const Verification(),
        '/terms': (context) => const Terms(),

        // -----  packages routes ----
        '/successPay': (context) => const Payment(),
        '/packages': (context) => const Packages(),
        '/daily': (context) => const DailyPackage(),
        '/monthly': (context) => const MonthlyPackage(),
        '/yearly': (context) => const YearlyPackage(),
        '/addCard': (context) => const AddCard(),
      },
    );
  }
}