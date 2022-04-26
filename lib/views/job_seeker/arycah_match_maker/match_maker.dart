import 'package:mobile_hr/library_imports.dart';

class MatchMaker extends StatelessWidget {
  const MatchMaker({Key? key}) : super(key: key);

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
          'Discover',
        ),
        leading: ArycahIcons.arrowLeft,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: SizedBox(
              height: 490,
              width: MediaQuery.of(context).size.width - 50,
              child: Stack(
                children: [
                  Container(
                    height: 430,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 149,
                          width: 151,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            ArycahImage.dummyProfile,
                            fit: BoxFit.cover,
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: 'Plumville International Ltd\n\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Lagos || Full Time\n\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: 'IELTS TUTOR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            minimumSize: const Size(150, 45),
                            primary: Colors.orangeAccent,
                          ),
                          onPressed: () {},
                          child: const Text(
                            r'$250/Month',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          iconButton(
                            context: context,
                            icon: ArycahIcons.swap,
                            iconColor: Colors.black,
                            size: 45,
                            onTap: () {},
                            bodyColor: Colors.white,
                          ),
                          iconButton(
                            size: 75,
                            context: context,
                            icon: ArycahIcons.heart,
                            iconColor: Colors.white,
                            bodyColor: Colors.lightBlueAccent,
                            onTap: () {},
                          ),
                          iconButton(
                            bodyColor: Colors.white,
                            context: context,
                            icon: ArycahIcons.bookmarkSingle,
                            iconColor: Colors.black,
                            onTap: () {},
                            size: 45,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
