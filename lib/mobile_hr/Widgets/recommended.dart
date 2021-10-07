import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Utils/company_data.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: Container(
        height: 48,
        width: 48,
        child: Image(
          image: AssetImage(companyData[index].assest),
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blueAccent),
        ),
      ),
      trailing: const Icon(Icons.flag_sharp),
      subtitle: Text(
        companyData[index].jobdescription,
      ),
      title: Text(
        companyData[index].companyName,
      ),
    );
  }
}
