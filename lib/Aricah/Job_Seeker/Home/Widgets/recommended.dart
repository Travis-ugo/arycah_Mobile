import '../../../library_imports.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade100),
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
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const JobDescription(),
              ),
            );
          },
          tileColor: Colors.white,
          isThreeLine: true,
          leading: Container(
            height: 55,
            width: 55,
            child: Image.asset(companyData[index].assest),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.blueAccent),
            ),
          ),
          trailing: const Icon(IconlyBold.bookmark),
          title: Text(
            companyData[index].companyName,
          ),
          subtitle: Text(
            companyData[index].jobdescription,
          ),
        ),
      ),
    );
  }
}
