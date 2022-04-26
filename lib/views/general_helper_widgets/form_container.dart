import '../library_imports.dart';

class FormContainer extends StatelessWidget {
  final Widget child;
  final String text;
  final double? height;
  const FormContainer({
    Key? key,
    required this.child,
    required this.text,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          height: height ?? 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
          child: Center(child: child),
        )
      ],
    );
  }
}
