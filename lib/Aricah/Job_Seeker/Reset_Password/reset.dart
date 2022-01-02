import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_hr/Aricah/Widgets/form_bar.dart';
import 'package:mobile_hr/Aricah/Widgets/formfiel.dart';
import 'package:mobile_hr/Aricah/Widgets/master_button.dart';

class ResetPassWord extends StatelessWidget {
  const ResetPassWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            const Align(
              alignment: Alignment.topLeft,
              child:
                  Text('Enter your email address below to reset your password'),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Emaiil Address"),
            ),
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
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Resend code in 30 secs',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
