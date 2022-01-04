import '../library_imports.dart';

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
