import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:test_subject/FireBase_Repo/Authenticate/auth.dart';

// MaterButton as described in the UI design by the designer has a function
// to push to next onboarding page.

class MasterButton extends StatelessWidget {
  const MasterButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.borderColor,
  }) : super(key: key);
  final String text;
  final Function()? onPressed;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey[50],
          side: BorderSide(
            width: 0.5,
            color: borderColor ?? Colors.blue,
          ),
          primary: color ?? Colors.blueAccent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          minimumSize: const Size(370, 55),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  final String buttonText;
  const GoogleButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey[50],
          side: const BorderSide(
            width: 0.5,
            color: Colors.blue,
          ),
          primary: Colors.white,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          minimumSize: const Size(370, 55),
        ),
        onPressed: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.googleLogin();
        },
        icon: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: <Color>[
                Colors.red,
                Colors.yellow,
                Colors.blue,
                Colors.green,
              ],
              tileMode: TileMode.clamp,
            ).createShader(bounds);
          },
          child: const Icon(
            FontAwesomeIcons.google,
            size: 18,
          ),
        ),
        label: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class Capanium extends StatelessWidget {
  const Capanium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const RadialGradient(
              center: Alignment.bottomLeft,
              radius: 0.5,
              colors: <Color>[
                Colors.green,
                Colors.pinkAccent,
                Colors.amberAccent
              ],
              tileMode: TileMode.clamp,
            ).createShader(bounds);
          },
          child: const Icon(
            Icons.location_city,
            size: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
