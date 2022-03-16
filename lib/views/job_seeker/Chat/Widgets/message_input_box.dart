import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MessageInputBox extends StatelessWidget {
  final TextEditingController passwordController;
  final Function() addMessage;
  const MessageInputBox({
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
                      hintText: 'Type a message',
                      hintStyle: const TextStyle(
                        color: Color(0xFF949EB0),
                        fontSize: 14,
                      )),
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
