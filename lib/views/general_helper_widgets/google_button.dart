import '../library_imports.dart';

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
              Provider.of<FireBaseAuthentication>(context, listen: false);
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
