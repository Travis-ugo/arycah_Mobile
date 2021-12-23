import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Authentication/sign_up.dart';
import 'package:mobile_hr/mobile_hr/Widgets/form_bar.dart';
import 'package:mobile_hr/mobile_hr/Widgets/formfiel.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(IconlyBold.arrow_left)),
                const SizedBox(height: 25),
                const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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
                    prefixIcons: null,
                    suffixIcon: const Icon(
                      IconlyBold.message,
                    ),
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
                    hintText: 'Password',
                    validator: (values) {
                      if (values!.length < 4) {
                        return ' password too short';
                      }
                      if (values.isEmpty) {
                        return 'Enter a valid password to continue';
                      }
                      return 'null';
                    },
                    prefixIcons: null,
                    suffixIcon: const Icon(IconlyBold.password),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                MasterButton(
                  onPressed: () {},
                  text: 'Sign In',
                ),
                const SizedBox(height: 25),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(color: Colors.grey[400], width: 100, height: 1),
                    const Text(
                      'or',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(color: Colors.grey[400], width: 100, height: 1),
                  ],
                ),
                const SizedBox(height: 25),
                const GoogleButton(),
                const SizedBox(height: 25),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontSize: 14,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign up',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.blue,
                                letterSpacing: .5,
                                fontSize: 14,
                              ),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                );
                                // navigate to desired screen
                              })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
