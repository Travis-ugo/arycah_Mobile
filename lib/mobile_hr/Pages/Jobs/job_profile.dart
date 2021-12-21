import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Widgets/form_bar.dart';
import 'package:test_subject/mobile_hr/Widgets/formfiel.dart';
import 'package:test_subject/mobile_hr/Widgets/master_button.dart';

class JobProfile2 extends StatelessWidget {
  const JobProfile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'contact info',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(IconlyBold.arrow_left, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
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
                    prefixIcons:null,
                    suffixIcon:  const Icon(IconlyBold.password),
                  ),
                ),
               
                const SizedBox(height: 25),
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
                    prefixIcons:null,
                    suffixIcon:  const Icon(IconlyBold.password),
                  ),
                ),
                   const SizedBox(height: 25),
                MasterButton(
                  onPressed: () {},
                  text: 'Next',
                ),
        
                  const SizedBox(height: 25),
               
                
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
