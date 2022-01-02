import 'package:flutter/material.dart';

class MButton extends StatelessWidget {
  const MButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.bordercolor,
      required this.textColor})
      : super(key: key);
  final String text;
  final void Function() onPressed;
  final Color bordercolor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 370,
      decoration: BoxDecoration(
        color: bordercolor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 14),
          ),
        ),
      ),
    );
  }
}

class PlentyCircles extends StatelessWidget {
  const PlentyCircles({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: 700,
      width: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Colors.white,
        ),
      ),
    );
  }
}
