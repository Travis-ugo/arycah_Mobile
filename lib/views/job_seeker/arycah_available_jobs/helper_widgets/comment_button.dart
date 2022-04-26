import '../../../library_imports.dart';

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
