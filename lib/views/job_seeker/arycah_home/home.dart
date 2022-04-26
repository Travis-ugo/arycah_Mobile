import 'package:mobile_hr/utils/arycah_icons.dart';

import '../../../library_imports.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

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
                        icon: ArycahIcons.menu,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                    DrawerButton(
                      icon: ArycahIcons.notification,
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
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
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
                SizedBox(
                  height: mediaQuery.height * 0.2 + 20,
                  child: PageView(
                    children: [
                      BannerWidget(
                        image: ArycahImage.name,
                        onTap: () {},
                        text: 'Do you need a CV\nreview for your next job?',
                      ),
                      BannerWidget(
                        image: ArycahImage.image3,
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
                      icon: ArycahIcons.playCircle,
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
                      icon: ArycahIcons.arrowForward,
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
