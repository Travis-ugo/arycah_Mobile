import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FileArt extends StatefulWidget {
  const FileArt({Key? key}) : super(key: key);

  @override
  State<FileArt> createState() => _FileArtState();
}

class _FileArtState extends State<FileArt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipPath(
              clipper: const Clipis(),
              child: Container(
                height: 300,
                width: 50,
                color: const Color(0xFF7E4900),
              ),
            ),
            ClipPath(
              clipper: const Clipis(),
              child: Container(
                height: 300,
                width: 30,
                color: const Color(0xFF7E4900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Clipis extends CustomClipper<Path> {
  const Clipis({Key? key});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.relativeLineTo(0, 500);
    path.relativeLineTo(500, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class Clipistt extends CustomClipper<Path> {
//   const Clipistt({Key? key});

//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.relativeLineTo(0, 500);
//     path.relativeLineTo(500, 0);
//     path.relativeLineTo(500, 0);
//     path.relativeLineTo(0, 500);

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }

class Frame extends StatelessWidget {
  const Frame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.yellowAccent,
          child: Stack(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      child: Container(
                        height: 300,
                        width: 50,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.pinkAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
