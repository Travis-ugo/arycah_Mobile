import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Job_Giver/Create_Jobs/jobber_wrapper.dart';

import 'jobber_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: onTabTapped,
          backgroundColor: Colors.white,
          elevation: 0.0,
          // onTap: (int index) {},
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.work), label: "Jobs"),
            // BottomNavigationBarItem(
            //     label: Container(), icon: Icon(IconlyBold.chat),),
            BottomNavigationBarItem(icon: Icon(IconlyBold.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.profile), label: "Profile"),
          ],
        ),
      ),
      // appBar:

      body: PageView(
        onPageChanged: onPageChanged,
        controller: _pageController,
        children: const [
          JobberHome(),
          JobberJobs(),
          JobPageWrap(),
          JobberChat(),
          JobberProfile(),
        ],
      ),
    );
  }
}

class JobberProfile extends StatelessWidget {
  const JobberProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class JobberChat extends StatelessWidget {
  const JobberChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class JobberJobs extends StatelessWidget {
  const JobberJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
