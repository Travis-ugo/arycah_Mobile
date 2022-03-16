import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'Widgets/chat_tile_bar.dart';

class MessageTilePage extends StatelessWidget {
  const MessageTilePage({Key? key}) : super(key: key);

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
            ChatTileBar(),
          ],
        ),
      ),
    );
  }
}
