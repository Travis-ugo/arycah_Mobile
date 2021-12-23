import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Authentication/log_in.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Home/home.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Job%20Profile/job_profile2.dart';
import 'package:test_subject/mobile_hr/Widgets/formfiel.dart';
import 'package:test_subject/mobile_hr/Widgets/master_button.dart';
import 'package:flutter/cupertino.dart';

class PassWordSec extends StatefulWidget {
  const PassWordSec({Key? key}) : super(key: key);

  @override
  State<PassWordSec> createState() => _PassWordSecState();
}

class _PassWordSecState extends State<PassWordSec> {
  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();
    bool check = false;
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
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // const Text(
            //   'Password',
            //   style: TextStyle(
            //     fontSize: 14,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
            // const SizedBox(height: 10),
            NewContainer(
              text: 'Password',
              child: FormBlock(
                controller: _passwordController,
                hintText: '************',
                validator: (values) {
                  if (values!.length < 4) {
                    return ' password too short';
                  }
                  if (values.isEmpty) {
                    return 'Enter a valid password to continue';
                  }
                  return 'null';
                },
                // prefixIcons: const Icon(CupertinoIcons.lock, size: 15),
                suffixIcon: IconButton(
                  icon: const Icon(CupertinoIcons.eye_slash),
                  onPressed: () {},
                  iconSize: 15,
                ),
              ),
            ),
            // const SizedBox(height: 25),
            // const Text(
            //   'Confirm Password',
            //   style: TextStyle(
            //     fontSize: 14,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
            // const SizedBox(height: 10),
            NewContainer(
              text: 'Confirm Password',
              child: FormBlock(
                controller: _confirmPasswordController,
                hintText: '************',
                validator: (values) {
                  if (values!.length < 4) {
                    return ' password too short';
                  }
                  if (values.isEmpty) {
                    return 'Enter a valid password to continue';
                  }
                  return 'null';
                },
                // prefixIcons: const Icon(CupertinoIcons.lock, size: 15),
                suffixIcon: IconButton(
                  icon: const Icon(CupertinoIcons.eye_slash),
                  onPressed: () {},
                  iconSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: check,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      check = true;
                    });
                  },
                ),
                const Text(
                  'I have read the terms and condition',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            MasterButton(
              borderColor: const Color(0xFF949EB0),
              color: const Color(0xFF949EB0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeMo(),
                  ),
                );
              },
              text: 'Create Account',
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Have an account?',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 14,
                    ),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign In',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Colors.blue,
                          letterSpacing: .5,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogIn(),
                            ),
                          );
                        },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}