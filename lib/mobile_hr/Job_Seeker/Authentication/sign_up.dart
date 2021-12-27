import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/FireBase_Repo/Authenticate/auth.dart';
import 'package:provider/provider.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Job%20Profile/job_profile2.dart';
import 'package:mobile_hr/mobile_hr/Widgets/formfiel.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';

import 'log_in.dart';

class SignUp extends StatefulWidget {
  final Function()? toggleView;
  const SignUp({
    Key? key,
    this.toggleView,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    bool check = false;
    final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    final _fullNameController = TextEditingController();
    final _phoneNumberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              IconlyBold.arrow_left,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create an account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Sing up with us to get your dream jobs! .",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30),
                NewContainer(
                  text: 'Full Name',
                  child: FormBlock(
                    controller: _fullNameController,
                    hintText: 'Full Name',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your name to continue';
                      }
                      return "null";
                    },
                  ),
                ),
                NewContainer(
                  text: 'Email Address',
                  child: FormBlock(
                    controller: _emailController,
                    hintText: 'Example@mail.com',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your email address to continue';
                      }
                      return "null";
                    },
                  ),
                ),
                NewContainer(
                  text: 'Phone Number',
                  child: FormBlock(
                    controller: _phoneNumberController,
                    hintText: 'Phone Number',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your email address to continue';
                      }
                      return "null";
                    },
                  ),
                ),
                NewContainer(
                  text: 'Password',
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
                    prefixIcons: const Icon(CupertinoIcons.lock, size: 15),
                    suffixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.eye_slash),
                      onPressed: () {},
                      iconSize: 15,
                    ),
                  ),
                ),
                const NewContainer(
                  text: 'How Did You Hear About Us? (Optional)',
                  child: Text('Click Here To Select'),
                ),
                // Terms and Conditions.
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: MarkRow(
                    blueText: ' terms and condition',
                    trailingText: 'I have read the',
                  ),
                ),
                MasterButton(
                  onPressed: () async {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.registerAccount(
                      displayName: _fullNameController.text,
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                  },
                  text: 'CREATE ACCOUNT',
                ),
                const Divider(),
                const GoogleButton(
                  buttonText: 'Sign up  with Google',
                ),
                const SizedBox(height: 25),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogIn(),
                      ),
                    );
                  },
                  child: const Text(
                    'Have an account? Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Divider extends StatelessWidget {
  const Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.grey[400],
              width: 100,
              height: 1.5,
            ),
            const Text(
              'OR',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              color: Colors.grey[400],
              width: 100,
              height: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}

class MarkRow extends StatefulWidget {
  final double? fontSize;
  final String trailingText;
  final String? blueText;
  final Function()? onTap;
  const MarkRow(
      {Key? key,
      required this.trailingText,
      this.blueText,
      this.onTap,
      this.fontSize})
      : super(key: key);

  @override
  _MarkRowState createState() => _MarkRowState();
}

class _MarkRowState extends State<MarkRow> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: checkBox,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged: (bool? value) {
            setState(() {
              checkBox = !checkBox;
            });
          },
        ),
        RichText(
          text: TextSpan(
            text: widget.trailingText,
            style: TextStyle(
              color: Colors.black,
              fontSize: widget.fontSize ?? 12,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: widget.blueText,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                recognizer: TapGestureRecognizer()..onTap = widget.onTap,
              )
            ],
          ),
        ),
      ],
    );
  }
}
