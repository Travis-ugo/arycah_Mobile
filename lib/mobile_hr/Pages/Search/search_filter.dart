import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_subject/mobile_hr/Widgets/master_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Jobs',
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
          // const SizedBox(height: 70),
          const Text('Job Level'),
          Wrap(
            children: [
              CheckboxListTile(
                title: const Text("Top Level", style: TextStyle(fontSize: 10),),
                value: true,
                onChanged: (newValue) {},
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              CheckboxListTile(
                title: const Text("Mid Level",style: TextStyle(fontSize: 10)),
                value: true,
                onChanged: (newValue) {},
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              CheckboxListTile(
                title: const Text("Senior Level",style: TextStyle(fontSize: 10)),
                value: true,
                onChanged: (newValue) {},
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
            ],
          ),
          // const SizedBox(height: 70),
          const Text('Salary'),
          Slider(
            onChanged: (double value) {}, 
            value: 7,
            // divisions: 3,
            min: 0.0,
            max: 100,
            activeColor: Colors.orangeAccent,
            inactiveColor: Colors.blueGrey,
          ),
          MasterButton(
            onPressed: () {},
            text: 'Apply',
          ),
        ],
      ),
    );
  }
}

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
