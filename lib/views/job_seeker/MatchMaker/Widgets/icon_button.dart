import '../../../library_imports.dart';

Widget iconButton({
  required double size,
  required BuildContext context,
  required IconData icon,
  required Color bodyColor,
  required Color iconColor,
  required void Function()? onTap,
}) {
  return Container(
    height: size,
    width: size,
    decoration: BoxDecoration(
      color: bodyColor,
      borderRadius: BorderRadius.circular(40),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset.fromDirection(
            1.5,
            7,
          ),
        ),
      ],
    ),
    child: IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: iconColor,
        size: size / 1.7,
      ),
    ),
  );
}
