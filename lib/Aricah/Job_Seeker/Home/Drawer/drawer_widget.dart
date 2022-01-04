import '../../../library_imports.dart';

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
          DrawerItmes(
            icon: Icons.door_front_door,
            text: 'Log out',
            onPressed: () {
              final provider =
                  Provider.of<FireBaseAuthentication>(context, listen: false);
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
        DrawerItmes(
          icon: IconlyBold.ticket,
          text: 'Job Match',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MarchMaker(),
              ),
            );
          },
        ),
        DrawerItmes(
          icon: IconlyBold.work,
          text: ' Applications',
          onPressed: () {},
        ),
        DrawerItmes(
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
        DrawerItmes(
          icon: Icons.person_add,
          text: 'Invite Friends',
          onPressed: () {},
        ),
        DrawerItmes(
          icon: Icons.info_sharp,
          text: 'About',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const About(),
              ),
            );
          },
        ),
      ],
    );
  }
}
