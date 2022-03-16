import '../../library_imports.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool ticker = false;
  RangeValues _values = const RangeValues(0.3, 0.7);
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
                  RichTextWiget(
                    fontSize: 14,
                    key: Key('top'),
                    trailingText: 'Top level',
                  ),
                  RichTextWiget(
                    fontSize: 14,
                    key: Key('mid'),
                    trailingText: 'Mid level',
                  ),
                  RichTextWiget(
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
