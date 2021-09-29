import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mobile_hr/mobile_hr/Widgets/form_bar.dart';
import 'package:mobile_hr/mobile_hr/Widgets/formfiel.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';

class ResetPassWord extends StatelessWidget {
  const ResetPassWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back, size: 20),
                SizedBox(width: 15),
                Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text('Enter your email address below to reset your password'),
            const SizedBox(height: 30),
            const Text("Emaiil Address"),
            const SizedBox(height: 10),
            FormBar(
              child: FormBlock(
                controller: _emailController,
                hintText: 'Example@mail.com',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your email address to continue';
                  }
                  return "null";
                },
                prefixIcons: const Icon(
                  CupertinoIcons.mail,
                ),
                suffixIcon: null,
              ),
            ),
            const SizedBox(height: 30),
            MasterButton(text: 'send me code', onPressed: () {}),
            const SizedBox(height: 10),
            const Text(
              'Resend code in 30 secs',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}