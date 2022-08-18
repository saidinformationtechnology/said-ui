import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({Key? key}) : super(key: key);

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
                  // color: Color(0xFF0268B2),
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
              const Color.fromRGBO(50, 185, 215, 1),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.white),
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
              const Color.fromRGBO(50, 185, 215, 1),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.white),
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
              const Color.fromRGBO(50, 185, 215, 1),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.white),
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
