import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_hr/mobile_hr/Job_Seeker/Authentication/sign_up.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool ticker = false;
  // SfRangeValues _currentRangeValues;
  RangeValues _currentRangeValues = RangeValues(0.3, 0.7);
  RangeValues _values = RangeValues(0.3, 0.7);
  double time = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Search Filters',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            const DropDown(
              hintText: 'Select Category',
              label: 'Category',
            ),
            const DropDown(
              hintText: 'Select Location',
              label: 'Location',
            ),
            const DropDown(
              hintText: 'Select Experience',
              label: 'Experience',
            ),
            const Text('Job Type'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TextWrap(
                    jobType: 'Full time',
                  ),
                  TextWrap(
                    jobType: 'Part time',
                  ),
                  TextWrap(
                    jobType: 'Remote',
                  ),
                  TextWrap(jobType: 'Contract'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Job Level',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  MarkRow(
                    fontSize: 14,
                    key: Key('top'),
                    trailingText: 'Top level',
                  ),
                  MarkRow(
                    fontSize: 14,
                    key: Key('mid'),
                    trailingText: 'Mid level',
                  ),
                  MarkRow(
                    fontSize: 14,
                    key: Key('senior'),
                    trailingText: 'Senior level',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Salary'),
            RangeSlider(
              labels:
                  RangeLabels(_values.start.toString(), _values.end.toString()),
              values: _values,
              activeColor: const Color(0xFFC4C4C4),
              inactiveColor: Colors.grey[200],
              onChanged: (RangeValues values) {
                setState(() {
                  _values = values;
                });
              },
            ),
            const SizedBox(height: 20),
            MasterButton(
              color: const Color(0xFF949EB0),
              borderColor: const Color(0xFF949EB0),
              onPressed: () {},
              text: 'Apply',
            ),
          ],
        ),
      ),
    );
  }
}

// Chip(
//  backgroundColor: Colors.transparent,
//  side: BorderSide(color: Colors.pink,
// ),label: Text('Senior level')),
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
                child: Drops(
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

class Drops extends StatefulWidget {
  final String hintText;
  const Drops({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  State<Drops> createState() => _DropsState();
}

class _DropsState extends State<Drops> {
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
