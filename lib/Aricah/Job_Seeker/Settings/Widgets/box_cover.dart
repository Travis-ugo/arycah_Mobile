import '../../../library_imports.dart';

class BoxCover extends StatelessWidget {
  final Widget child;
  const BoxCover({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 54,
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 0.5),
          ),
        ),
      ),
    );
  }
}
