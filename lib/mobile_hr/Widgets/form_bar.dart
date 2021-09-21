import 'package:flutter/material.dart';

class FormBar extends StatelessWidget {
  const FormBar({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: child),
      height: 50,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 7,
            blurRadius: 9,
            offset: Offset.fromDirection(
              1,
              9,
            ),
          ),
        ],
      ),
    );
  }
}
