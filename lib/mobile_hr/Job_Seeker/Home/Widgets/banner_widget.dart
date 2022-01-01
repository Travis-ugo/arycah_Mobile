import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final String image;
  const BannerWidget({
    Key? key,
    required this.text,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: mediaQuery.height * 0.2 + 20,
      decoration: BoxDecoration(
        color: const Color(0xFF0075FF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF9000),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: onTap,
                  child: const Text('Learn More'),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
