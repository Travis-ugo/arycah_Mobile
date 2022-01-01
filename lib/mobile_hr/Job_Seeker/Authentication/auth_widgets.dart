import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.grey[400],
              width: 100,
              height: 1.5,
            ),
            const Text(
              'OR',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              color: Colors.grey[400],
              width: 100,
              height: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
