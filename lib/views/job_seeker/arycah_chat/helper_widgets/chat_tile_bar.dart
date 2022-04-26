import 'package:flutter/material.dart';
import 'package:mobile_hr/library_imports.dart';

import '../message_room_view.dart';

class ChatTileBar extends StatelessWidget {
  const ChatTileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MessageRoom()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color(0xFFE7E4E4)),
        ),
        height: 85,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 85,
              width: 80,
              child: Image.asset(ArycahImage.dummyProfile),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Wale Jumia',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
                      // overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Just Now',
                    style: TextStyle(fontSize: 10, color: Color(0xFFB8B8B8)),
                  ),
                  ArycahIcons.circleSharp,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
