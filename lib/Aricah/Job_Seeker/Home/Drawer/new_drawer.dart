import '../../../library_imports.dart';

class NewDrawer extends StatefulWidget {
  const NewDrawer({Key? key}) : super(key: key);

  @override
  _NewDrawerState createState() => _NewDrawerState();
}

class _NewDrawerState extends State<NewDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.orangeAccent,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: Colors.lightBlueAccent,
            height: double.infinity,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
