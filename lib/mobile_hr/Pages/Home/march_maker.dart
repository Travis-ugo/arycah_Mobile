import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class MarchMaker extends StatelessWidget {
  const MarchMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Discover',
        ),
        leading: const Icon(
         IconlyBold.arrow_left,
          color: Colors.black,
          size: 18,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: SizedBox(
              height: 490,
              width: MediaQuery.of(context).size.width - 50,
              child: Stack(
                children: [
                  Container(
                    height: 430,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 125,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text('PlumVie'),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: 'Plumville International Ltd\n\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Lagos || Full Time\n\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: 'IELTS TUTOR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            minimumSize: const Size(150, 45),
                            primary: Colors.orangeAccent,
                          ),
                          onPressed: () {},
                          child: const Text(
                            r'$250/Month',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          iconButton(
                            context: context,
                            icon: IconlyBold.swap,
                            iconColor: Colors.black,
                            size: 45,
                            onTap: () {},
                            bodyColor: Colors.white,
                          ),
                          iconButton(
                            size: 75,
                            context: context,
                            icon: IconlyBold.heart,
                            iconColor: Colors.white,
                            bodyColor: Colors.lightBlueAccent,
                            onTap: () {},
                          ),
                          iconButton(
                            bodyColor: Colors.white,
                            context: context,
                            icon: IconlyBold.bookmark,
                            iconColor: Colors.black,
                            onTap: () {},
                            size: 45,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget iconButton({
  required double size,
  required BuildContext context,
  required IconData icon,
  required Color bodyColor,
  required Color iconColor,
  required void Function()? onTap,
}) {
  return Container(
    height: size,
    width: size,
    decoration: BoxDecoration(
      color: bodyColor,
      borderRadius: BorderRadius.circular(40),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset.fromDirection(
            1.5,
            7,
          ),
        ),
      ],
    ),
    child: IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: iconColor,
        size: size / 1.7,
      ),
    ),
  );
}
