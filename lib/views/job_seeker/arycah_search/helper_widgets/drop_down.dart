import '../../../../library_imports.dart';

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
