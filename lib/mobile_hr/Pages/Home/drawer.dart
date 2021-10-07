import 'package:flutter/material.dart';

class WidgetDrawer extends StatelessWidget {
  const WidgetDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Logo'),
          drawer(context),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 0.5,
                  color: Color(0xFFFCB04B),
                ),
              ),
            ),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: IconButton(
                icon: const Icon(Icons.door_front_door),
                onPressed: () {},
              ),
              label: const Text('Sign Out'),
            ),
          ),
        ],
      ),
    );
  }

  Widget drawer(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          label: const Text('Home'),
        ),
        const SizedBox(height: 15),
        ElevatedButton.icon(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          label: const Text('Settings'),
        ),
        const SizedBox(height: 15),
        ElevatedButton.icon(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.person_add),
            onPressed: () {},
          ),
          label: const Text('Invite Friends'),
        ),
        const SizedBox(height: 15),
        ElevatedButton.icon(
          onPressed: () {},
          icon: IconButton(
            icon: const Icon(Icons.info_sharp),
            onPressed: () {},
          ),
          label: const Text('About'),
        ),
      ],
    );
  }
}
