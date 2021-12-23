import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Authentication/log_in.dart';
import 'package:mobile_hr/mobile_hr/Widgets/form_bar.dart';
import 'package:mobile_hr/mobile_hr/Widgets/formfiel.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _lastNameController = TextEditingController();
    final _firstNameController = TextEditingController();
    final _confirmPasswordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(IconlyBold.arrow_left)),
                    const SizedBox(height: 25),
                    const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      "Sing up with us to get your dream jobs! .",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "First Name",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    FormBar(
                      child: FormBlock(
                        controller: _firstNameController,
                        hintText: 'Travis',
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
                    const Text(
                      "Last Name",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    FormBar(
                      child: FormBlock(
                        controller: _lastNameController,
                        hintText: 'Okonicha',
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
                    const Text(
                      "Emaiil Address",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
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
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    FormBar(
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
                        prefixIcons: const Icon(CupertinoIcons.lock, size: 15),
                        suffixIcon: IconButton(
                          icon: const Icon(CupertinoIcons.eye_slash),
                          onPressed: () {},
                          iconSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    FormBar(
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
                        prefixIcons: const Icon(CupertinoIcons.lock, size: 15),
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
                        Checkbox(value: true, onChanged: (value) {}),
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
                      onPressed: () {},
                      text: 'Sign In',
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            color: Colors.grey[400], width: 100, height: 1),
                        const Text(
                          'or',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                            color: Colors.grey[400], width: 100, height: 1),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const GoogleButton(),
                    const SizedBox(height: 25),
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
                                  MaterialPageRoute(
                                    builder: (context) => const LogIn(),
                                  );
                                  // navigate to desired screen
                                },
                            )
                          ],
                        ),
                      ),
                    ),
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
