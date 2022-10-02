import 'package:flutter/material.dart';

import '../../../services/constrants.dart';

class SalesDrawer extends StatefulWidget {
  const SalesDrawer({Key? key}) : super(key: key);

  @override
  State<SalesDrawer> createState() => _SalesDrawerState();
}

class _SalesDrawerState extends State<SalesDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 65),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Image.asset('assets/icons/clear1.png'),
                  iconSize: 40,
                  // color: primaryBlue,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
               cyan,
            ),
            foregroundColor: MaterialStateProperty.all(whiteColor),
            padding: MaterialStateProperty.all(
                const EdgeInsets.fromLTRB(120, 10, 120, 10)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          child: const Text(
            'قائمة المبيعات',
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'NotoBold',
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/salesMenu');
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
               cyan,
            ),
            foregroundColor: MaterialStateProperty.all(whiteColor),
            padding: MaterialStateProperty.all(
                const EdgeInsets.fromLTRB(132, 10, 132, 10)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          child: const Text(
            'مرتجع مبيع',
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'NotoBold',
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/returned');
          },
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
               cyan,
            ),
            foregroundColor: MaterialStateProperty.all(whiteColor),
            padding: MaterialStateProperty.all(
                const EdgeInsets.fromLTRB(130, 10, 130, 10)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          child: const Text(
            'إضافة منتج',
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'NotoBold',
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/addProduct');
          },
        ),
      ],
    );
  }
}
