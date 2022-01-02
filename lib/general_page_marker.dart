import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/Aricah/Job_Seeker/On_Boarding/on_boarding.dart';
import 'Aricah/Job_Seeker/Authentication/logIn_page.dart';
import 'Aricah/Job_Seeker/Authentication/sign_up.dart';
import 'Aricah/Job_Seeker/Chat/chatpage.dart';
import 'Aricah/Job_Seeker/Home/home.dart';
import 'Aricah/Job_Seeker/Jobs/jobs.dart';
import 'Aricah/Job_Seeker/User_Profile/profil.dart';
import 'Aricah/Job_Seeker/Wish_List/wish_list.dart';
import 'mobile_hr/Job_Seeker/Home/Drawer/Drawer_widget.dart';

class Homie extends StatelessWidget {
  const Homie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          return const GeneralMarker();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Something Went wrong'),
          );
        } else {
          return const OnBoadding();
        }
      },
    );
  }
}

class AuthenicationScreen extends StatefulWidget {
  const AuthenicationScreen({Key? key}) : super(key: key);

  @override
  _AuthenicationScreenState createState() => _AuthenicationScreenState();
}

class _AuthenicationScreenState extends State<AuthenicationScreen> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return AricahLogInPage(toggleView: toggleView);
    } else {
      return AricahSignInPage(
        toggleView: toggleView,
      );
    }
  }
}

class GeneralMarker extends StatefulWidget {
  const GeneralMarker({Key? key}) : super(key: key);

  @override
  State<GeneralMarker> createState() => _GeneralMarkerState();
}

class _GeneralMarkerState extends State<GeneralMarker> {
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
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.work), label: "Jobs"),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.bookmark), label: "Wishlist"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.profile), label: "Profile"),
          ],
        ),
      ),
      drawer: const WidgetDrawer(),
      body: PageView(
        onPageChanged: onPageChanged,
        controller: _pageController,
        children: const [
          HomePageWidget(),
          Jobs(),
          WishList(),
          ChatPage(),
          UserProfile(),
        ],
      ),
    );
  }
}
