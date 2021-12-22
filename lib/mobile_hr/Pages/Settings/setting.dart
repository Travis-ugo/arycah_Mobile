import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Settings',
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
          children: [
            RustCopper(
              onTap: () {},
              text: 'Use two-factor authentication',
              icon: IconlyBold.password,
            ),
            RustCopper(
              onTap: () {},
              text: 'Change Password',
              icon: IconlyBold.swap,
            ),
            RustCopper(
              onTap: () {},
              text: 'Biometrics',
              icon: IconlyBold.heart,
            ),
          ],
        ),
      ),
    );
  }
}

class RustCopper extends StatelessWidget {
  final Function() onTap;
  final IconData? icon;
  final String text;
  const RustCopper({
    Key? key,
    required this.onTap,
    this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0.5, color: Colors.grey),
            ),
            height: 59,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Row(
              children: [
                Text(text),
              ],
            )),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 0.5, color: Colors.grey),
          ),
          height: 59,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Row(
              children: [
                Icon(icon),
                const SizedBox(width: 15),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
