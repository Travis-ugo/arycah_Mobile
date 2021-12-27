import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Settings/setting.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

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
          'FAQ',
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
              text: 'About us',
            ),
            RustCopper(
              onTap: () {},
              text: 'About us',
            ),
            RustCopper(
              onTap: () {},
              text: 'About us',
            ),
            RustCopper(
              onTap: () {},
              text: 'About us',
            ),
            RustCopper(
              onTap: () {},
              text: 'About us',
            ),
          ],
        ),
      ),
    );
  }
}
