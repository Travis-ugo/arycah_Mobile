import '../../library_imports.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 160,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.5),
              ),
              child: Row(
                children: [
                  const Icon(IconlyBold.home, size: 50),
                  const SizedBox(width: 20),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Feel free to stop by\n',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.5,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'Office: 31, Opebi Street,(Same Building with Bellefull, Victoria Island, Lagos. Nigeria.',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w200,
                                letterSpacing: 0.5,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            MasterButton(
              text: 'Close',
              onPressed: () {},
              color: Colors.transparent,
              borderColor: Colors.blue,
              textColor: Colors.blue,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
