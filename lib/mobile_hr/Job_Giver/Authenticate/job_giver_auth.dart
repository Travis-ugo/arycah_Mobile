import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Authentication/logIn_page.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/JobApplicationForm/application_profile2.dart';
import 'package:mobile_hr/mobile_hr/Widgets/formfiel.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';

import '../../../general_page_marker.dart';

class JobGiverSignIn extends StatelessWidget {
  const JobGiverSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "Hello, welcome back to Mobile HR",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30),
            NewContainer(
              text: 'RC Number',
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
                suffixIcon: IconButton(
                  icon: const Icon(CupertinoIcons.eye_slash),
                  onPressed: () {},
                  iconSize: 15,
                ),
              ),
            ),
            NewContainer(
              text: 'Password',
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
                  value: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onChanged: (bool? value) {},
                ),
                const Text(
                  'Remember me',
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
                    builder: (context) => const GeneralMarker(),
                  ),
                );
              },
              text: 'Sign in',
            ),
            const SizedBox(height: 15),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Dont have an account?',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 14,
                    ),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign up',
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
                              builder: (context) => const AricahLogInPage(),
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
