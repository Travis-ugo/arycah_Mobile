import 'package:mobile_hr/utils/arycah_icons.dart';

import '../../../library_imports.dart';

class FeaturedJobsCard extends StatelessWidget {
  const FeaturedJobsCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 143,
        width: 216,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset.fromDirection(
                1,
                9,
              ),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  child: Image.asset(companyData[index].assets),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: ArycahIcons.bookmark,
                ),
              ],
            ),
            Text(
              companyData[index].companyName,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Color(0xFF949EB0),
              ),
            ),
            Text(
              companyData[index].jobDescription,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  companyData[index].compensation,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF949EB0),
                  ),
                ),
                Text(
                  companyData[index].numberOfApplicants + ' Applicants',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF949EB0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
