import 'package:flutter/material.dart';

import 'master_button.dart';

// Represent an onboarding page widget
// to be easily resused when nessesary.

class Pages extends StatelessWidget {
  const Pages({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);
  final String firstText;
  final String secondText;
  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // final controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: skipButton(context),
          ),
          Container(
            color: Colors.blue,
            height: 400,
            width: 400,
          ),
          Text(
            firstText,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            secondText,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w100,
            ),
          ),
          const Center(child: Text("page seperator")),
          MasterButton(
            text: buttonText,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

// Skip Button located at the top of the page
// function to jump to finish page.
Widget skipButton(BuildContext context) => TextButton(
    onPressed: () {},
    child: const Text(
      "Skip",
      style: TextStyle(fontSize: 14, color: Colors.black),
    ));
