import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final Widget child;
  final double round;
  final double width;
  final double height;
  final bool border;
  final bool shadow;
  final int color;

  const CustomContainer({
    Key? key,
    required this.child,
    required this.round,
    required this.width,
    required this.height,
    this.border = false,
    this.shadow = true,
    this.color = 0xFFFFFFFF
  }) : super(key: key);

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
        color: Color(widget.color),
        borderRadius: BorderRadius.circular(widget.round),
        border: widget.border
            ? Border.all(color: Colors.grey.shade200)
            : Border.all(width: 0.0, color: Colors.transparent),
        boxShadow: [
          widget.shadow
              ? const BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
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
          color: const Color(0xFFACF0FF),
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
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    ],
  );
}
