import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Chat/chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
          controller.animateToPage(
                2,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBold.edit,
                color: Colors.black,
              ))
        ],
        title: const Text(
          'Message',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            TileBar(),
          ],
        ),
      ),
    );
  }
}

class TileBar extends StatelessWidget {
  const TileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Chat()));
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
              child: Image.asset('assets/plum.png'),
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
                  Icon(
                    Icons.circle_sharp,
                    color: Colors.blue,
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
