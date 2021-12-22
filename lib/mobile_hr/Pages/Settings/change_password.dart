import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Pages/Job%20Profile/job_profile2.dart';
import 'package:test_subject/mobile_hr/Pages/Settings/setting.dart';
import 'package:test_subject/mobile_hr/Widgets/formfiel.dart';
import 'package:test_subject/mobile_hr/Widgets/master_button.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameTextController = TextEditingController();
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Password',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Enter your new password to continue'),
                const SizedBox(height: 20),
              Cover(
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Old Password',
                ),
              ),
              Cover(
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'New Password',
                ),
              ),
              Cover(
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Confirm Password',
                ),
              ),
              const SizedBox(height: 20),
              MasterButton(
                text: 'Change',
                onPressed: () {},
                color: const Color(0xFF949EB0),
                borderColor: const Color(0xFF949EB0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cover extends StatelessWidget {
  final Widget child;
  const Cover({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 54,
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 0.5),
          ),
        ),
      ),
    );
  }
}
