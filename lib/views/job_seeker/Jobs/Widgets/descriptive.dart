import '../../../library_imports.dart';

class DescriptiveCarosel extends StatefulWidget {
  const DescriptiveCarosel({Key? key}) : super(key: key);

  @override
  _DescriptiveCaroselState createState() => _DescriptiveCaroselState();
}

class _DescriptiveCaroselState extends State<DescriptiveCarosel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      height: 300,
      child: PageView(
        children: [
          const Text('comalobrtes'),
          const Text('prides'),
          Column(
            children: const [
              Text(
                "Our company is looking to hire a Product Designer to focus on designing seamless product experiences. You will take the lead in creating user-centric products from strategy to execution."
                "Our team of designers is looking for someone who is curious about human problems and needs. ",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                'Preffered Qualifications',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                '.   2 years of products design experience (and the portfolio to back it up) as a key, hands on product designer ',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                '.   Strong graphics design and user interaction skills and the ability to manifest out brand aesthetic through',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
