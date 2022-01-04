import 'package:flutter/cupertino.dart';

import '../../../library_imports.dart';

class DropDownSelectionText extends StatefulWidget {
  final String hintText;
  const DropDownSelectionText({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  State<DropDownSelectionText> createState() => _DropDownSelectionTextState();
}

class _DropDownSelectionTextState extends State<DropDownSelectionText> {
  Object? _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: const Text(''),
      elevation: 2,
      hint: _dropDownValue == null
          ? Text(widget.hintText)
          : Text(
              '$_dropDownValue',
            ),
      isExpanded: true,
      icon: const Icon(CupertinoIcons.chevron_down, size: 16),
      items: ['One', 'Two', 'Three'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropDownValue = val;
          },
        );
      },
    );
  }
}
