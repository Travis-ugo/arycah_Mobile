import 'package:flutter/cupertino.dart';

import '../../../library_imports.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passWord = TextEditingController();
    final _confirmPassword = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back, size: 20),
                SizedBox(width: 15),
                Text(
                  'Password',
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
              child: Text(
                'Enter your new password to continue',
              ),
            ),
            const SizedBox(height: 30),
            FormBar(
              child: FormBlock(
                controller: _passWord,
                hintText: 'Password',
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
            const SizedBox(height: 15),
            FormBar(
              child: FormBlock(
                controller: _confirmPassword,
                hintText: 'Confirm Password',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'confirm address to continue';
                  }
                  return "null";
                },
                prefixIcons: const Icon(
                  CupertinoIcons.mail,
                ),
                suffixIcon: null,
              ),
            ),
            const SizedBox(height: 100),
            MasterButton(text: 'Change', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
