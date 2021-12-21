import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

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
        title: Row(
          children: [
            IconButton(
              icon: const Icon(
                IconlyBold.arrow_left,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            const CircleAvatar(
              // backgroundImage: AssetImage(),
              radius: 33,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Loco',
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Loco',
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 400,
              width: 250,
              padding: const EdgeInsets.all(10),
              
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 5,
                      blurRadius: 9,
                      offset: Offset.fromDirection(
                        2,
                        4,
                      ),
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('No Message yet'),
                  const Text('Send a message or reply with a greeting sticker below', textAlign: TextAlign.center,),
                  Container(height: 100, ),
                ],
              ),
            ),
          ),
          const TextzBox(),
        ],
      ),
    );
  }
}

class TextzBox extends StatelessWidget {
  const TextzBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 75,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(IconlyLight.plus),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 0.4),
                ),
                child: TextFormField(
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey[800]),
                  autofocus: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(
                        IconlyLight.bookmark,
                        color: Colors.black38,
                      ),
                      onPressed: () {},
                    ),
                    // border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: 'Type a message',
                    //  hintStyle: TextStyle(color: colorize.greyColor),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(IconlyLight.camera),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
