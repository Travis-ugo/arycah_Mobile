import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/Aricah/Widgets/master_button.dart';

class JobProfile1 extends StatelessWidget {
  final PageController controller;
  const JobProfile1({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Appyling for',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset.fromDirection(
                      1,
                      9,
                    ),
                  ),
                ],
              ),
              child: ListTile(
                tileColor: Colors.white,
                isThreeLine: true,
                leading: Container(
                  height: 55,
                  width: 55,
                  child: Image.asset('assets/uba.png'),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                ),
                trailing: const Icon(IconlyBold.bookmark),
                title: const Text('Accountant'),
                subtitle: const Text(
                  'Jumia || \$250\nExp: 1-2 yrs',
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text('Choose resume'),
            const SizedBox(height: 15),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: Colors.orangeAccent, style: BorderStyle.solid),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/attachment.png'),
                  ),
                  const SizedBox(width: 10),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Attach file here\n',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 16,
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Upload: 5MB max in DOC, PDF',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w200,
                                letterSpacing: .5,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: MasterButton(
                borderColor: const Color(0xFF949EB0),
                color: const Color(0xFF949EB0),
                onPressed: () {
                  controller.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                },
                text: 'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
