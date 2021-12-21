import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Utils/company_data.dart';
import 'package:test_subject/mobile_hr/Widgets/drawer_button.dart';
import 'package:test_subject/mobile_hr/Widgets/featured_jobs_card.dart';
import 'package:test_subject/mobile_hr/Widgets/recommended.dart';
import 'package:test_subject/mobile_hr/Widgets/search_filter.dart';
import 'drawer.dart';

class HomeMo extends StatelessWidget {
  const HomeMo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _featuredJobs = ScrollController();
    final mediaQuery = MediaQuery.of(context).size; 
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
          elevation: 0.0,
          onTap: (int index) {},
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.work), label: "Jobs"),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.bookmark), label: "Wishlist"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.profile), label: "Profile"),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Row(
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
              onPressed: () {},
            )
          ],
        ),
      ),
      drawer: const WidgetDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Hello userName",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
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
              Container(
                width: double.infinity,
                height: mediaQuery.height * 0.2 + 20,
                decoration: BoxDecoration(
                  color: const Color(0xFF568DF5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Need a mentor?\nWe are here for you!',
                          style: TextStyle(color: Colors.white),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Learn More'),
                        ),
                      ],
                    ),
                    const Text(
                      'Need a mentor?\nWe are \nhere for you!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Featured Jobs',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
                    label: const Text(
                      'See all',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _featuredJobs,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return FeaturedJobsCard(index: index);
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
                    label: const Text(
                      'See all',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.transparent,
                child: Expanded(
                  flex: 3,
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: _featuredJobs,
                    itemCount: companyData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Recommended(index: index);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
