import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final Widget child;
  final double round;
  final double width;
  final double height;
  final bool border;

  const CustomContainer(
      {Key? key,
      required this.child,
      required this.round,
      required this.width,
      required this.height,
      this.border=false,})
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(widget.round),
        border: widget.border ? Border.all(color: Colors.grey.shade200): Border.all(width: 0),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x33000000),
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: widget.child,
    );
  }
}
