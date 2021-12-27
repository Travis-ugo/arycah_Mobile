import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Job_Seeker/Job%20Profile/job_profile5.dart';
import 'package:test_subject/mobile_hr/Utils/company_data.dart';
import 'package:test_subject/mobile_hr/Widgets/info_button.dart';
import 'package:test_subject/mobile_hr/Widgets/recommended.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _featuredJobs = ScrollController();
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [Comentbutton(), ApplyButton()],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                IconlyBold.arrow_left,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBold.send,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: ClassicDisplay(),
              ),
            ),
            SliverToBoxAdapter(
              child: DownTown(),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassicDisplay extends StatelessWidget {
  const ClassicDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 373,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xFFE9E7E7)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                width: 80,
                // child: const Image(
                //   image: AssetImage(''),
                // ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blueAccent),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFE9E7E7))),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyBold.bookmark,
                      color: Color(0xFF8A8B8F),
                    ),
                  ),
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InfoButton(
                    title: 'Experience',
                    subTitle: 'Minimum 2 years',
                  ),
                  InfoButton(
                    title: 'Work level',
                    subTitle: 'Junior level',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InfoButton(
                    title: 'Employment type',
                    subTitle: 'Full time job',
                  ),
                  InfoButton(
                    title: 'Offer salary',
                    subTitle: r'$250/Month',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DownTown extends StatefulWidget {
  const DownTown({Key? key}) : super(key: key);

  @override
  _DownTownState createState() => _DownTownState();
}

class _DownTownState extends State<DownTown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      height: 300,
      child: PageView(
        children: [
          const Text('comalobrtes'),
          const Text('prides'),
          Column(
            children: const [
              Text(
                "Our company is looking to hire a Product Designer to focus on designing seamless product experiences. You will take the lead in creating user-centric products from strategy to execution."
                "Our team of designers is looking for someone who is curious about human problems and needs. ",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                'Preffered Qualifications',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                '.   2 years of products design experience (and the portfolio to back it up) as a key, hands on product designer ',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                '.   Strong graphics design and user interaction skills and the ability to manifest out brand aesthetic through',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Comentbutton extends StatelessWidget {
  const Comentbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color(0xFFE9E7E7)),
        ),
        height: 52,
        width: 58,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.chat, color: Colors.blueAccent),
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const JobPageWrap(),
          ),
        );
      },
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
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
