import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    final _confirmPasswordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back),
              const Text("Emaiil Address"),
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
              const Text('PassWord'),
              FormBar(
                child: FormBlock(
                  controller: _passwordController,
                  hintText: '**********',
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
              const Text("Confirm Password"),
              FormBar(
                child: FormBlock(
                  controller: _confirmPasswordController,
                  hintText: '**********',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your email address to continue';
                    }
                    return "null";
                  },
                  prefixIcons: const Icon(
                    CupertinoIcons.mail,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(CupertinoIcons.eye_slash),
                    onPressed: () {},
                    iconSize: 15,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.add_box),
                  Text('I have read the terms and condition'),
                ],
              ),
              Center(
                child: MasterButton(
                  onPressed: () {},
                  text: 'Sign In',
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(color: Colors.grey, width: 40, height: 5),
                  const Text('OR'),
                  Container(color: Colors.grey, width: 40, height: 5),
                ],
              ),
              Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign in with Google',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ),
              const Text('Dont have an account?  Sign Up.'),
            ],
          ),
        ),
      ),
    );
  }
}
