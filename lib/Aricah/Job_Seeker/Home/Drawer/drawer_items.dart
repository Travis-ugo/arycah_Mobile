import '../../../library_imports.dart';

class DrawerItmes extends StatelessWidget {
  const DrawerItmes({
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
