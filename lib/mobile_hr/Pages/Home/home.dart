import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Pages/Home/drawer.dart';
import 'package:mobile_hr/mobile_hr/Widgets/drawer_button.dart';
import 'package:mobile_hr/mobile_hr/Widgets/featured_jobs_card.dart';
import 'package:mobile_hr/mobile_hr/Widgets/recommended.dart';
import 'package:mobile_hr/mobile_hr/Widgets/search_filter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _featuredJobs = ScrollController();
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        key: key,
        elevation: 0.0,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            DrawerButton(
              icon: Icons.menu,
            ),
            DrawerButton(
              icon: Icons.notifications,
            )
          ],
        ),
      ),
      drawer: const WidgetDrawer(),
      body: Column(
        children: [
          const Text(
            "Hello userName",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Text(
            'Find your perfect job',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xFF949EB0),
            ),
          ),
          const SearchFilter(),
          Container(
            width: 374,
            height: 153,
            decoration: BoxDecoration(
              color: const Color(0xFF2967DB),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Row(
            children: [
              const Text(
                'Featured Jobs',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                label: const Text('See all'),
              ),
            ],
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            controller: _featuredJobs,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return FeaturedJobsCard(index: index);
            },
          ),
          Row(
            children: [
              const Text(
                'Recommended',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                label: const Text('See all'),
              ),
            ],
          ),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _featuredJobs,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Recommended(index: index);
            },
          ),
        ],
      ),
    );
  }
}
