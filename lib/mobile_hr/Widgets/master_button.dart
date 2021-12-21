import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:iconly/iconly.dart';

// MaterButton as described in the UI design by the designer has a function
// to push to next onboarding page.

class MasterButton extends StatelessWidget {
  const MasterButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
            width: 0.5,
            color: Colors.blue,
          ),
          primary: Colors.blueAccent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          minimumSize: const Size(370, 50),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          width: 0.5,
          color: Colors.blue,
        ),
        primary: Colors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        minimumSize: const Size(370, 50),
      ),
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.google,
        size: 18,
        color: Colors.redAccent,
      ),
      label: const Text(
        'Sign in with Google',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
