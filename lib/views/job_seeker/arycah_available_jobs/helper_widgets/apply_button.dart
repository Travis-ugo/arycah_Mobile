import 'package:mobile_hr/views/job_seeker/arycah_application_form/application_profile5.dart';

import '../../../library_imports.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const JobPageWrap(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 52,
          width: 297,
          color: Colors.blueAccent,
          child: const Center(
            child: Text(
              'Apply Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
