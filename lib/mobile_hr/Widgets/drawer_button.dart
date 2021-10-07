import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: Icon(
        icon,
        color: Colors.blueAccent,
        size: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
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
