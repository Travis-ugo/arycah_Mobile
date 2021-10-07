import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: 48,
        width: 140,
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: Color(0xFF949EB0),
              ),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
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
      ),
    );
  }
}
