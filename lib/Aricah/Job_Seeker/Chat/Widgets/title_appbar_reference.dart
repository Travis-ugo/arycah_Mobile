import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppBarTitleReference extends StatelessWidget {
  const AppBarTitleReference({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const CircleAvatar(
          backgroundImage: AssetImage('assets/plum.png'),
          radius: 33,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Plumvile Agent',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  IconlyBold.tick_square,
                  color: Colors.blue,
                  size: 16,
                ),
              ],
            ),
            const Text(
              'Active',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 12,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
