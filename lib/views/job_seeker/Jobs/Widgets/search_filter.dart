import '../../../library_imports.dart';

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
          width: MediaQuery.of(context).size.width - 100,
          decoration: BoxDecoration(
            color: const Color(0xFFE7E7E7),
            borderRadius: BorderRadius.circular(5),
          ),
          child: FormBlock(
            controller: _searchFilter,
            hintText: 'Search for your favourite jobs',
            validator: (value) {
              return 'speack';
            },
            prefixIcons: const Icon(
              IconlyBold.search,
              color: Colors.blueAccent,
            ),
            suffixIcon: null,
          ),
        ),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: const Color(0xFFE7E7E7),
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyBold.filter,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
