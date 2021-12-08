import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Utils/company_data.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 5,
              blurRadius: 9,
              offset: Offset.fromDirection(
                1,
                9,
              ),
            ),
          ],
        ),
        child: ListTile(
          tileColor: Colors.white,
          isThreeLine: true,
          leading: Container(
            height: 55,
            width: 55,
            // child: Image(
            //   image: AssetImage(companyData[index].assest),
            // ),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.blueAccent),
            ),
          ),
          trailing: const Icon(Icons.bookmark),
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
