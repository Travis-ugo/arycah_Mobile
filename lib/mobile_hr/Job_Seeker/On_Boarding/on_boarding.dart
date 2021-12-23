import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Authentication/log_in.dart';
import 'package:mobile_hr/mobile_hr/Widgets/m_button.dart';
import 'package:mobile_hr/mobile_hr/Widgets/onboard.dart';
// Mobile Hr onBoarding Pages

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          Pages(
            firstText: "Getting a job near you just got easier and better",
            secondText:
                "Quickly and easily search for your dreaam job. get access to legit jobs from verified companies",
            buttonText: 'Next',
            onPressed: () {
              controller.animateToPage(
                1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            assets: 'assets/Saly-22.png',
          ),
          Pages(
            firstText: "Personalized job matching with lucrative jobs nearby",
            secondText:
                "job recommendations, job searches, and job oppotunities right on your mobile device",
            buttonText: 'Next',
            onPressed: () {
              controller.animateToPage(
                2,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            assets: 'assets/Saly-7.png',
          ),
          Pages(
            firstText: "Learn from proffetionals about your career",
            secondText:
                "Meet your mentor, Get career guide from proffessionals, Make your CV stand out",
            buttonText: 'Get Started',
            onPressed: () {
              controller.animateToPage(
                3,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            assets: 'assets/Saly-32.png',
          ),
          const ChooseWidget(),
        ],
      ),
    );
  }
}

class ChooseWidget extends StatelessWidget {
  const ChooseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MButton(
              text: "Sign Up as Jobseeker",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogIn()));
              },
              bordercolor: Colors.white,
              textColor: Colors.blue,
            ),
            const SizedBox(height: 20),
            MButton(
              text: 'Sign Up as Job Giver',
              onPressed: () {},
              bordercolor: Colors.transparent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
