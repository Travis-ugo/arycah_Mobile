// Skip Button located at the top of the page
// function to jump to finish page.
import 'package:flutter/material.dart';

import '../select_page.dart';

Widget skipButton(BuildContext context) => TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ChooseWidget(),
          ),
        );
      },
      child: const Text(
        "Skip",
        style: TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
