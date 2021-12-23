import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              IconlyBold.video,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              IconlyBold.call,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
        leading: IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Loco',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          Container(),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              IconlyBold.plus,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
