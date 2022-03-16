import '../../../library_imports.dart';

class RichTextWiget extends StatefulWidget {
  final double? fontSize;
  final String trailingText;
  final String? blueText;
  final Function()? onTap;
  const RichTextWiget({
    Key? key,
    required this.trailingText,
    this.blueText,
    this.onTap,
    this.fontSize,
  }) : super(key: key);

  @override
  _RichTextWigetState createState() => _RichTextWigetState();
}

class _RichTextWigetState extends State<RichTextWiget> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: checkBox,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged: (bool? value) {
            setState(() {
              checkBox = !checkBox;
            });
          },
        ),
        RichText(
          text: TextSpan(
            text: widget.trailingText,
            style: TextStyle(
              color: Colors.black,
              fontSize: widget.fontSize ?? 12,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: widget.blueText,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                recognizer: TapGestureRecognizer()..onTap = widget.onTap,
              )
            ],
          ),
        ),
      ],
    );
  }
}
