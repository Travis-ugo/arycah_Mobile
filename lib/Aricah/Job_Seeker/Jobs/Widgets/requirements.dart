import '../../../library_imports.dart';

class Requirement extends StatelessWidget {
  const Requirement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 373,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xFFE9E7E7)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                width: 80,
                // child: const Image(
                //   image: AssetImage(''),
                // ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blueAccent),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFE9E7E7))),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyBold.bookmark,
                      color: Color(0xFF8A8B8F),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Product Designer',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Plumville Int || Lagos, Nigeria',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InfoButton(
                    title: 'Experience',
                    subTitle: 'Minimum 2 years',
                  ),
                  InfoButton(
                    title: 'Work level',
                    subTitle: 'Junior level',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InfoButton(
                    title: 'Employment type',
                    subTitle: 'Full time job',
                  ),
                  InfoButton(
                    title: 'Offer salary',
                    subTitle: r'$250/Month',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
