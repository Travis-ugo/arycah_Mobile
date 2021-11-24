import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_hr/mobile_hr/Utils/company_data.dart';
import 'package:mobile_hr/mobile_hr/Widgets/recommended.dart';
import 'package:mobile_hr/mobile_hr/Widgets/search_filter.dart';

class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _featuredJobs = ScrollController();
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Jobs',
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const SearchFilter(),
              const SizedBox(height: 20),
              Container(
                color: Colors.transparent,
                child: Expanded(
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
