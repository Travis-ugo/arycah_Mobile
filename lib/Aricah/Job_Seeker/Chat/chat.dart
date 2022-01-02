import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<AnimatedListState>();
    final _passwordController = TextEditingController();
    List<String> _chatroom = ['hot boy'];

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
        ),
      ),
      body: Stack(
        children: [
          if (_chatroom.isNotEmpty) ...[
            AnimatedList(
              key: key,
              initialItemCount: _chatroom.length,
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  axis: Axis.horizontal,
                  axisAlignment: 1,
                  sizeFactor: animation,
                  child: ChatBoox(
                    checkBoxText: _chatroom[index],
                  ),
                );
              },
            )
          ] else if (_chatroom.isEmpty) ...[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width / 2 + 20,
                    padding: const EdgeInsets.only(top: 10),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'No Message yet',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          'Send a message or reply with a greeting sticker below',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                        Image.asset('assets/inbox.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
          TextzBox(
            passwordController: _passwordController,
            addMessage: () {
              key.currentState!
                  .insertItem(0, duration: const Duration(milliseconds: 10));
              _chatroom.add(_passwordController.text);
              _passwordController.clear();
            },
          ),
        ],
      ),
    );
  }
}

class TextzBox extends StatelessWidget {
  final TextEditingController passwordController;
  final Function() addMessage;
  const TextzBox({
    Key? key,
    required this.passwordController,
    required this.addMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 75,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(CupertinoIcons.add),
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
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(
                        IconlyLight.bookmark,
                        color: Colors.black38,
                      ),
                      onPressed: () {},
                    ),
                    focusedBorder: InputBorder.none,
                    // enabledBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    // errorBorder: InputBorder.none,
                    hintText: 'Type a message',
                    hintStyle:const  TextStyle(color: Color(0xFF949EB0), fontSize: 14,)
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(IconlyLight.send),
              onPressed: addMessage,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBoox extends StatelessWidget {
  final String checkBoxText;
  const ChatBoox({
    Key? key,
    required this.checkBoxText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Expanded(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 50,
            maxWidth: 170,
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Text(
              checkBoxText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w100,
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
