import '../../library_imports.dart';

class ChooseWidget extends StatelessWidget {
  const ChooseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MasterButton(
              text: "Sign Up as Jobseeker",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GeneralMarker(),
                  ),
                );
              },
              borderColor: Colors.white,
              textColor: Colors.blue,
            ),
            const SizedBox(height: 20),
            MasterButton(
              text: 'Sign Up as Jobgiver',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JobGiverSignIn(),
                  ),
                );
              },
              borderColor: Colors.transparent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
