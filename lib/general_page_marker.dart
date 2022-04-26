import 'library_imports.dart';

class Homie extends StatelessWidget {
  const Homie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
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
          return const OnBoarding();
        }
      },
    );
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return ArycahSignup(toggleView: toggleView);
    } else {
      return ArycahSignIn(
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
          MessageTilePage(),
          UserProfile(),
        ],
      ),
    );
  }
}
