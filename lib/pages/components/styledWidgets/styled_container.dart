import 'package:flutter/material.dart';

import '../../../services/constrants.dart';

class CustomContainer extends StatefulWidget {
  final Widget child;
  final double round;
  final double width;
  final double height;
  final bool border;
  final bool shadow;
  final Color color;

  const CustomContainer(
      {Key? key,
      required this.child,
      required this.round,
      this.width = double.infinity,
      this.height = double.infinity,
      this.border = false,
      this.shadow = true,
      this.color = whiteColor})
      : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(widget.round),
        border: widget.border
            ? Border.all(color: Colors.grey.shade200)
            : Border.all(width: 0.0, color: Colors.transparent),
        boxShadow: [
          widget.shadow
              ? const BoxShadow(
                  blurRadius: 3.0,
                  color: transparentBlack,
                  offset: Offset(0.0, 1.0),
                )
              : const BoxShadow(
                  blurRadius: 0.0,
                  color: Colors.transparent,
                  offset: Offset(0.0, 0.0),
                ),
        ],
      ),
      child: widget.child,
    );
  }
}

Widget paymentHeader(BuildContext context) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        margin: const EdgeInsets.only(right: 35),
        alignment: Alignment.centerRight,
        child: IconButton(
          icon: Image.asset('assets/icons/back.png'),
          iconSize: 40,
          color: lightCyan,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      const Text(
        'صفحة الدفع',
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          height: 0.1,
          fontFamily: 'NotoBold',
          color: whiteColor,
          fontSize: 25,
        ),
      ),
    ],
  );
}
