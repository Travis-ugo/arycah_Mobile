import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Utils/company_data.dart';

class FeaturedJobsCard extends StatelessWidget {
  const FeaturedJobsCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143,
      width: 216,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 7,
            blurRadius: 9,
            offset: Offset.fromDirection(
              1,
              9,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.blueAccent),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
          Text(
            companyData[index].companyName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xFF949EB0),
            ),
          ),
          Text(
            companyData[index].jobdescription,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                companyData[index].companysPay,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF949EB0),
                ),
              ),
              Text(
                companyData[index].numberOfApplicants + ' Applicants',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF949EB0),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
