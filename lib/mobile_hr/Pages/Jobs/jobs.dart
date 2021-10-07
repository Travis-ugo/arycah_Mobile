import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Widgets/recommended.dart';
import 'package:mobile_hr/mobile_hr/Widgets/search_filter.dart';

class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _featuredJobs = ScrollController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppBar(
            centerTitle: false,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: const Icon(
              Icons.arrow_back_ios_new,
              size: 15,
            ),
            title: const Text(
              'Jobs',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SearchFilter(),
          const SizedBox(height: 20),
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
