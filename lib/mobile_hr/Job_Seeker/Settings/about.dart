import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Settings/setting.dart';
import 'contact_us.dart';
import 'faq.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
          'About',
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactUs(),
                  ),
                );
              },
              text: 'Contact Us',
              icon: IconlyBold.call,
            ),
            RustCopper(
              onTap: () {},
              text: 'Terms and Conditions',
              icon: IconlyBold.document,
            ),
            RustCopper(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FAQ(),
                  ),
                );
              },
              text: 'FAQ',
              icon: IconlyBold.more_circle,
            ),
            RustCopper(
              onTap: () {},
              text: 'Visit Our Website',
              icon: IconlyBold.call,
            ),
          ],
        ),
      ),
    );
  }
}
