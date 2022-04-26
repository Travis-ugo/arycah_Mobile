import '../../../library_imports.dart';

class TextWrap extends StatefulWidget {
  final String jobType;
  const TextWrap({Key? key, required this.jobType}) : super(key: key);

  @override
  _TextWrapState createState() => _TextWrapState();
}

class _TextWrapState extends State<TextWrap> {
  bool selected = false;
  Color color = Colors.black;
  Color boxColor = Colors.transparent;
  Color borderColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
            if (selected == true) {
              color = Colors.white;
              boxColor = Colors.blue;
              borderColor = Colors.transparent;
            } else {
              color = Colors.black;
              boxColor = Colors.transparent;
              borderColor = Colors.black;
            }
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 0.6, color: borderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Text(
              widget.jobType,
              style: TextStyle(
                fontSize: 12,
                color: color,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
