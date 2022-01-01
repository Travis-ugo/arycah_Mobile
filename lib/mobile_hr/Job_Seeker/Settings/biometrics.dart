import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'settings_widget.dart';

class Biometrics extends StatelessWidget {
  const Biometrics({Key? key}) : super(key: key);

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
          'Biometrics',
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
            SettingOptions(
              onTap: () {},
              text: 'Activate Biometrics',
            ),
          ],
        ),
      ),
    );
  }
}
