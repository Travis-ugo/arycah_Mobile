import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:iconly/iconly.dart';
import 'package:test_subject/mobile_hr/Pages/User_Profile/profile_data.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon:
              const Icon(IconlyBold.arrow_left, size: 20, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.grey.shade600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey.shade200,
                      backgroundImage: AssetImage(
                        profile.profilePicture,
                      ),
                    ),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.grey.shade700,
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          IconlyBold.edit,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Text(
                profile.userName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Profilcontainer(
                    count: profile.count,
                    title: 'Applied',
                  ),
                  Profilcontainer(
                    count: profile.saved,
                    title: 'Saved',
                  ),
                  Profilcontainer(
                    count: profile.interView,
                    title: 'Interview',
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: cardData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: ProfileCard(
                        title: cardData[index].title,
                        subTitle: cardData[index].subTitle,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(10),
            height: 115,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(5),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: const Offset(0, 20),
                  blurRadius: 20,
                  spreadRadius: 4,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
            child: Center(
              child: Text(
                subTitle,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Profilcontainer extends StatelessWidget {
  const Profilcontainer({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 8,
            spreadRadius: 4,
            color: Colors.grey.shade200,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade800,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w100,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
