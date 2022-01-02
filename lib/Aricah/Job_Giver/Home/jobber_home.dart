import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/Aricah/Job_Seeker/Home/Drawer/drawer_button.dart';
import 'package:mobile_hr/Aricah/Job_Seeker/Notifications/notifications.dart';
import 'package:mobile_hr/Aricah/Utils/company_data.dart';
import 'package:mobile_hr/Aricah/Widgets/recommended.dart';
import 'package:mobile_hr/Aricah/Widgets/search_filter.dart';

class JobberHome extends StatelessWidget {
  const JobberHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    Text(''),
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
                Row(
                  children: [
                    const Text(
                      'Hello,',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      ' ${FirebaseAuth.instance.currentUser!.displayName}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const Icon(
                      IconlyBold.tick_square,
                      color: Colors.blue,
                      size: 16,
                    ),
                  ],
                ),

                const Text(
                  'List your perfect job today!',
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
                      'Active listing',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: Color(0xFF130F26),
                      ),
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
