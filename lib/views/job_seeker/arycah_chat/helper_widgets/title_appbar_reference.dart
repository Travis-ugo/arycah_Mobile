import 'package:mobile_hr/library_imports.dart';

class AppBarTitleReference extends StatelessWidget {
  const AppBarTitleReference({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: ArycahIcons.arrowLeft,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const CircleAvatar(
          backgroundImage: AssetImage(ArycahImage.dummyProfile),
          radius: 33,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Plumvile Agent',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                ArycahIcons.tickSquare,
              ],
            ),
            const Text(
              'Active',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 12,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
