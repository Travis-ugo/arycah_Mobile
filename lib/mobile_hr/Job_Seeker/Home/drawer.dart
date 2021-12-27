import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/FireBase_Repo/Authenticate/auth.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Settings/about.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Settings/setting.dart';
import 'package:provider/provider.dart';
import 'march_maker.dart';

class WidgetDrawer extends StatelessWidget {
  const WidgetDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 310,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Logo',
                style: TextStyle(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          drawer(context),
          const Expanded(
            child: SizedBox(),
          ),
          const Divider(
            color: Color(0xFFFCB04B),
          ),
          DrawItems(
            icon: Icons.door_front_door,
            text: 'Log out',
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logOut();
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget drawer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawItems(
          icon: IconlyBold.ticket,
          text: 'Job Match',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MarchMaker()));
          },
        ),
        DrawItems(
          icon: IconlyBold.work,
          text: ' Applications',
          onPressed: () {},
        ),
        DrawItems(
          icon: Icons.settings,
          text: 'Settings',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Setting(),
              ),
            );
          },
        ),
        DrawItems(
          icon: Icons.person_add,
          text: 'Invite Friends',
          onPressed: () {},
        ),
        DrawItems(
          icon: Icons.info_sharp,
          text: 'About',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const About()));
          },
        ),
      ],
    );
  }
}

class DrawItems extends StatelessWidget {
  const DrawItems({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final String text;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xFF0B0D0F),
            ),
            const SizedBox(width: 5),
            TextButton(
              onPressed: onPressed,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                  color: Color(0xFF0B0D0F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
