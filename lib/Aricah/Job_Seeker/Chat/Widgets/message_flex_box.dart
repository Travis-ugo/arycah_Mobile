import 'package:flutter/material.dart';

class MessageFlexBox extends StatelessWidget {
  final String checkBoxText;
  const MessageFlexBox({
    Key? key,
    required this.checkBoxText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
