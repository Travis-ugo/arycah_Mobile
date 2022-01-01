import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Home/home.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/JobApplicationForm/application_profile2.dart';
import 'package:mobile_hr/mobile_hr/Widgets/formfiel.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';

import '../../../general_page_marker.dart';

class SignUpState extends StatelessWidget {
  const SignUpState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(debugLabel: '_JobGiverFormState');
    final _emailController = TextEditingController();
    final _lastNameController = TextEditingController();
    final _firstNameController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                NewContainer(
                  text: "Comapany’s Name",
                  child: FormBlock(
                    controller: _firstNameController,
                    hintText: 'John Doe',
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
                NewContainer(
                  text: 'RC Number',
                  child: FormBlock(
                    controller: _lastNameController,
                    hintText: 'O0123456789',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your email address to continue';
                      }
                      return "null";
                    },
                    prefixIcons: const Icon(
                      CupertinoIcons.mail,
                    ),
                  ),
                ),
                NewContainer(
                  text: 'Emaiil Address',
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
                  ),
                ),
                const SizedBox(height: 65),
                MasterButton(
                  borderColor: const Color(0xFF949EB0),
                  color: const Color(0xFF949EB0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GeneralMarker()),
                    );
                  },
                  text: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
