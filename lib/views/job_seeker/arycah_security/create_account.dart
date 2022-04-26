import 'package:flutter/cupertino.dart';

import '../../library_imports.dart';

class ArycahSignup extends StatefulWidget {
  final Function()? toggleView;
  const ArycahSignup({
    Key? key,
    this.toggleView,
  }) : super(key: key);

  @override
  State<ArycahSignup> createState() => _ArycahSignupState();
}

class _ArycahSignupState extends State<ArycahSignup> {
  @override
  Widget build(BuildContext context) {
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
          ),
        ),
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
                FormContainer(
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
                FormContainer(
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
                FormContainer(
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
                FormContainer(
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
                      suffixIcon: GestureDetector(
                        child: const Icon(
                          CupertinoIcons.eye_slash,
                          size: 15,
                        ),
                        onTap: () => setState(
                          () {},
                        ),
                      )),
                ),
                const FormContainer(
                  text: 'How Did You Hear About Us? (Optional)',
                  child: Text('Click Here To Select'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: RichTextWiget(
                    blueText: ' terms and condition',
                    trailingText: 'I have read the',
                  ),
                ),
                MasterButton(
                  onPressed: () async {
                    final provider = Provider.of<FireBaseAuthentication>(
                        context,
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
                        builder: (context) => const viewsLogInPage(),
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
