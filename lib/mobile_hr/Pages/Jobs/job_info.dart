import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Widgets/info_button.dart';
import 'package:mobile_hr/mobile_hr/Widgets/search_filter.dart';

class JobInfo extends StatelessWidget {
  const JobInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ScrollController _featuredJobs = ScrollController();
    return Column(
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
          actions: const [
            Icon(
              Icons.send_rounded,
              size: 15,
            ),
          ],
        ),
        const SearchFilter(),
        const SizedBox(height: 20),
        Container(
          height: 380,
          width: 373,
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.blueAccent),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(),
                  Container(
                    height: 48,
                    width: 48,
                    child: const Image(
                      image: AssetImage(''),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFF949EB0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.filter_1_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const Text(
                'Product Designer',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'Plumville Int || Lagos, Nigeria',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Row(
                children: const [
                  InfoButton(
                    title: 'Job titile',
                    subTitle: 'Year typepos',
                  ),
                  InfoButton(
                    title: 'Job titile',
                    subTitle: 'Year typepos',
                  ),
                  InfoButton(
                    title: 'Job titile',
                    subTitle: 'Year typepos',
                  ),
                  InfoButton(
                    title: 'Job titile',
                    subTitle: 'Year typepos',
                  ),
                ],
              ),
            ],
          ),
        ),
        const Text(' Description'),
        Row(
          children: [
            Container(),
            Container(),
          ],
        )
      ],
    );
  }
}

class Comentbutton extends StatelessWidget {
  const Comentbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 52,
          width: 52,
          color: Colors.blueAccent,
          child: const Icon(Icons.comment),
        ),
      ),
    );
  }
}

class ApplyButton extends StatelessWidget {
  const ApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 52,
          width: 297,
          color: Colors.blueAccent,
          child: const Center(
            child: Text(
              'Apply Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
