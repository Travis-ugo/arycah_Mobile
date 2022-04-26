import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../library_imports.dart';

/// Providers are declared globally and specifies how to create a state

final checkBoxProvider = StateProvider<bool?>((ref) => true);

class RichTextWiget extends StatelessWidget {
  final double? fontSize;
  final String trailingText;
  final String? blueText;
  final Function()? onTap;
  const RichTextWiget(
      {Key? key,
      this.fontSize,
      required this.trailingText,
      this.blueText,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Consumer(builder: (context, ref, _) {
          return Checkbox(
            checkColor: Colors.white,
            value: true, //checkBoxProvider,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onChanged: (bool? value) {
              // setState(() {
              //   checkBox = !checkBox;
              // });
            },
          );
        }),
        RichText(
          text: TextSpan(
            text: trailingText,
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize ?? 12,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: blueText,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                recognizer: TapGestureRecognizer()..onTap = onTap,
              )
            ],
          ),
        ),
      ],
    );
  }
}
