import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'About',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(IconlyBold.category, color: Colors.black),
          onPressed: () {},
        ),
      ),
    );
  }
}
