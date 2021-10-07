import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'formfiel.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  _SearchFilterState createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchFilter = TextEditingController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 48,
          width: 305,
          decoration: BoxDecoration(
            color: const Color(0xFF949EB0),
            borderRadius: BorderRadius.circular(15),
          ),
          child: FormBlock(
            controller: _searchFilter,
            hintText: 'Search for your favourite jobs',
            validator: (value) {
              return 'speack';
            },
            prefixIcons: const Icon(
              CupertinoIcons.search,
            ),
            suffixIcon: null,
          ),
        ),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: const Color(0xFF949EB0),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(
            Icons.filter_1_outlined,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
