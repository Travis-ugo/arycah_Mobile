import '../../../library_imports.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          Pages(
            firstText: "Getting a job near you just got easier and better",
            secondText:
                "Quickly and easily search for your dreaam job. get access to legit jobs from verified companies",
            buttonText: 'Next',
            onPressed: () {
              controller.animateToPage(
                1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            assets: ArycahImage.sally,
          ),
          Pages(
            firstText: "Personalized job matching with lucrative jobs nearby",
            secondText:
                "job recommendations, job searches, and job oppotunities right on your mobile device",
            buttonText: 'Next',
            onPressed: () {
              controller.animateToPage(
                2,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            assets: 'assets/Saly-7.png',
          ),
          Pages(
            firstText: "Learn from proffetionals about your career",
            secondText:
                "Meet your mentor, Get career guide from proffessionals, Make your CV stand out",
            buttonText: 'Get Started',
            onPressed: () {
              controller.animateToPage(
                3,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            assets: ArycahImage.sally,
          ),
          const ChooseWidget(),
        ],
      ),
    );
  }
}
