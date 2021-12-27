import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Chat/chatpage.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Jobs/jobs.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/User_Profile/profil.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Wish_List/notifications.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Wish_List/wish_list.dart';
import 'package:test_subject/mobile_hr/Utils/company_data.dart';
import 'package:test_subject/mobile_hr/Widgets/drawer_button.dart';
import 'package:test_subject/mobile_hr/Widgets/featured_jobs_card.dart';
import 'package:test_subject/mobile_hr/Widgets/recommended.dart';
import 'package:test_subject/mobile_hr/Widgets/search_filter.dart';

import 'drawer.dart';

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
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.bookmark), label: "Wishlist"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.profile), label: "Profile"),
          ],
        ),
      ),
      // appBar:
      drawer: const WidgetDrawer(),
      body: PageView(
        onPageChanged: onPageChanged,
        controller: _pageController,
        children: const [
          Delute(),
          Jobs(),
          WishList(),
          ChatPage(),
          UserProfile(),
        ],
      ),
    );
  }
}

class Delute extends StatelessWidget {
  const Delute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _featuredJobs = ScrollController();
    ScrollController _recommendedJobs = ScrollController();
    final mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => DrawerButton(
                        icon: Icons.menu,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                    DrawerButton(
                      icon: IconlyBold.notification,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notifications(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Hello, ${FirebaseAuth.instance.currentUser!.displayName}\n',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Find your perfect job',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF949EB0),
                  ),
                ),
                const SizedBox(height: 10),
                const SearchFilter(),
                const SizedBox(height: 15),
                // add banner
                SizedBox(
                  height: mediaQuery.height * 0.2 + 20,
                  child: PageView(
                    children: [
                      AddBanner(
                        image: 'assets/name.png',
                        onTap: () {},
                        text: 'Do you need a CV\nreview for your next job?',
                      ),
                      AddBanner(
                        image: 'assets/image3.png',
                        onTap: () {},
                        text: ' Need a mentor?\nWe are here for you!',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured Jobs',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_circle, size: 15),
                      label: const Text(
                        'See all',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 143,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _featuredJobs,
                    itemCount: companyData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FeaturedJobsCard(index: index);
                    },
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recommended',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.arrow_forward_ios_rounded, size: 15),
                      label: const Text(
                        'See all',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  controller: _recommendedJobs,
                  itemCount: companyData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Recommended(index: index);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddBanner extends StatelessWidget {
  final String text;
  final Function() onTap;
  final String image;
  const AddBanner({
    Key? key,
    required this.text,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: mediaQuery.height * 0.2 + 20,
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF9000),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: onTap,
                  child: const Text('Learn More'),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
