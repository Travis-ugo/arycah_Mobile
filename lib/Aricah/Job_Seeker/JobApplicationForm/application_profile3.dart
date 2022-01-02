import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/Aricah/Widgets/formfiel.dart';
import 'package:mobile_hr/Aricah/Widgets/master_button.dart';
import 'application_profile2.dart';

class JobProfile3 extends StatelessWidget {
  final PageController controller;
  const JobProfile3({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameTextController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewContainer(
                text: 'Highest level of education?*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Example@gmail.com',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'email is required';
                    }
                    return 'null';
                  },
                  suffixIcon: const Icon(IconlyBold.password),
                ),
              ),
              NewContainer(
                text: 'How many years of work expirence do\nyou have?*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Example@gmail.com',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'email is required';
                    }
                    return 'null';
                  },
                  suffixIcon: const Icon(IconlyBold.password),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 150),
                child: MasterButton(
                  borderColor: const Color(0xFF949EB0),
                  color: const Color(0xFF949EB0),
                  onPressed: () {
                    controller.animateToPage(
                      3,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.linear,
                    );
                  },
                  text: 'Submit',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
