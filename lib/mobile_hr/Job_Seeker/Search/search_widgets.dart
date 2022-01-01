import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  final String hintText;
  final String label;
  const DropDown({Key? key, required this.hintText, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 52,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: const Color(0xFFF3F1F1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DropDownSelectionText(
                  hintText: hintText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
