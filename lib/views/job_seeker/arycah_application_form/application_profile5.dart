import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'application_profile1.dart';
import 'application_profile2.dart';
import 'application_profile3.dart';
import 'application_profile4.dart';

class JobPageWrap extends StatefulWidget {
  const JobPageWrap({Key? key}) : super(key: key);

  @override
  _JobPageWrapState createState() {
    return _JobPageWrapState();
  }
}

class _JobPageWrapState extends State<JobPageWrap> {
  String text = 'Notification';
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
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
            _pageController.previousPage(
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          },
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                LinearProgressPageIndicator(
              itemCount: 4,
              currentPageNotifier: _currentPageNotifier,
              progressColor: const Color(0xFFFCB04B),
              width: constraints.maxWidth,
              height: 5,
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              color: Colors.black87,
              height: 200,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  JobProfile1(controller: _pageController),
                  JobProfile2(controller: _pageController),
                  JobProfile3(controller: _pageController),
                  const JobProfile4(),
                ],
                onPageChanged: (int index) {
                  _currentPageNotifier.value = index;
                  setState(() {
                    if (index == 3) {
                      text = 'Application Succeful';
                    } else if (index == 2) {
                      text = 'Additional Info';
                    } else if (index == 1) {
                      text = 'Contact Info';
                    } else {
                      text = 'Notification';
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
