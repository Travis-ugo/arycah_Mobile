import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  const SoundButton({Key? key, required this.width}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: width / 6.666, left: width / 6.666),
          child: Center(
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()..rotateZ(15 * 3.1415927),
              child: ClipPath(
                clipper: ClipB(width: width),
                child: Container(
                  height: width - 20,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()..rotateZ(15 * 3.1415927),
            child: ClipPath(
              clipper: ClipB(width: width),
              child: Container(
                height: width - 20,
                width: width,
                color: const Color(0xFFC19151),
              ),
            ),
          ),
        ),
        Center(
          child: ClipPath(
            clipper: ClipB(width: width),
            child: Container(
              height: width - 20,
              width: width,
              color: const Color(0xFF7E4900),
            ),
          ),
        ),
        Center(
          child: Container(
            height: width / 1.758 - 5,
            width: width / 1.758,
            color: const Color(0xFFF0D0A6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'P',
                  style: TextStyle(
                    fontSize: width / 6.25,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFA5660D),
                  ),
                ),
                Text(
                  '/P/',
                  style: TextStyle(
                    fontSize: width / 10,
                    color: const Color(0xFFA5660D),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ClipB extends CustomClipper<Path> {
  const ClipB({Key? key, required this.width});
  final double width;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, width - 20);
    path.lineTo(width, 0);
    path.lineTo(size.width - 400, size.height - 400);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
