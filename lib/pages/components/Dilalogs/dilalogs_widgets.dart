import 'package:flutter/material.dart';

import '../../../services/constrants.dart';

Widget editPrice(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
    child: Column(
      children: [
        const SizedBox(height: 7),
        const SizedBox(
          width: 400,
          child: Text(
            'تعديل السعر',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 17.0,
              height: 1.5,
              color: whiteColor,
              fontFamily: 'NotoBold',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  'الإجمالي',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w800,
                      color: primaryBlue),
                ),
                const SizedBox(height: 3),
                Container(
                  width: 80,
                  height: 31,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        color: transparentBlack,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const TextField(
                    style: TextStyle(
                      color: primaryBlue,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.only(
                          bottom: 2, top: 0, left: 7, right: 7), // Added this
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'الضريبة',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w800,
                      color: primaryBlue),
                ),
                const SizedBox(height: 3),
                Container(
                  width: 80,
                  height: 31,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        color: transparentBlack,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const TextField(
                    style: TextStyle(
                      color: primaryBlue,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.only(
                          bottom: 2, top: 0, left: 7, right: 7), // Added this
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'السعر',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w800,
                      color: primaryBlue),
                ),
                const SizedBox(height: 3),
                Container(
                  width: 80,
                  height: 31,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        color: transparentBlack,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const TextField(
                    style: TextStyle(
                      color: primaryBlue,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.only(
                          bottom: 2, top: 0, left: 7, right: 7), // Added this
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  backgroundColor: MaterialStateProperty.all(primaryBlue),
                  foregroundColor: MaterialStateProperty.all(whiteColor),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(40, 4, 40, 4)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  )),
                ),
                child: const Text(
                  'الغاء',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'NotoBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  backgroundColor: MaterialStateProperty.all(primaryBlue),
                  foregroundColor: MaterialStateProperty.all(whiteColor),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(40, 4, 40, 4)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
                child: const Text(
                  'حفظ',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'NotoBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget editItem(BuildContext context) {
  return SizedBox(
    width: 500,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
      child: Column(
        children: [
          const SizedBox(height: 4),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'تعديل العنصر',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 17.0,
                height: 1.5,
                color: whiteColor,
                fontFamily: 'NotoBold',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 31,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey.shade200),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: transparentBlack,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontFamily: 'NotoBold',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.end,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                isDense: true, // Added this
                contentPadding: EdgeInsets.only(
                    bottom: 0, top: 4, left: 7, right: 8), // Added this
                hintText: 'باركود المنتج',
                hintStyle: TextStyle(
                    fontFamily: 'NotoBold',
                    color: Color(0xffC1C7D0),
                    fontSize: 12),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 31,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey.shade200),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: transparentBlack,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontFamily: 'NotoBold',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.end,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                isDense: true, // Added this
                contentPadding: EdgeInsets.only(
                    bottom: 0, top: 2, left: 7, right: 8), // Added this
                hintText: 'اسم المنتج',
                hintStyle: TextStyle(
                    fontFamily: 'NotoBold',
                    color: Color(0xffC1C7D0),
                    fontSize: 12),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 31,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey.shade200),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: transparentBlack,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontFamily: 'NotoBold',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.end,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                isDense: true, // Added this
                contentPadding: EdgeInsets.only(
                    bottom: 0, top: 2, left: 7, right: 8), // Added this
                hintText: 'سعر المنتج',
                hintStyle: TextStyle(
                    fontFamily: 'NotoBold',
                    color: Color(0xffC1C7D0),
                    fontSize: 13),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size.zero),
                    backgroundColor: MaterialStateProperty.all(primaryBlue),
                    foregroundColor: MaterialStateProperty.all(whiteColor),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(40, 4, 40, 4)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    )),
                  ),
                  child: const Text(
                    'الغاء',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size.zero),
                    backgroundColor: MaterialStateProperty.all(primaryBlue),
                    foregroundColor: MaterialStateProperty.all(whiteColor),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(40, 4, 40, 4)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                  ),
                  child: const Text(
                    'حفظ',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'NotoBold',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
