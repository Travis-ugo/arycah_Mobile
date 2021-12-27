import 'package:flutter/material.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Home/home.dart';
import 'package:test_subject/mobile_hr/Widgets/master_button.dart';

class JobProfile4 extends StatelessWidget {
  const JobProfile4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 117,
              child: Image.asset('assets/congratulations.png'),
            ),
            const SizedBox(height: 40),
            const Text('Congratulations!\n'),
            const Text(
              'You have successfully submitted your application for the vacancy of Accountant\n',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: MasterButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                text: 'Home',
              ),
            ),
            MasterButton(
              textColor: Colors.blue,
              color: Colors.transparent,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              text: 'View apllications',
            ),
          ],
        ),
      ),
    );
  }
}