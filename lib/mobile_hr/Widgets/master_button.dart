import 'package:flutter/material.dart';

// MaterButton as described in the UI design by the designer has a function
// to push to next onboarding page.

class MasterButton extends StatelessWidget {
  const MasterButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 50,
        width: 370,
        color: Colors.blueAccent,
        child: Center(
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}

// Skip Button located at the top of the page
// function to jump to finish page.
Widget skipButton(BuildContext context) =>
    TextButton(onPressed: () {}, child: const Text("Skip"));
