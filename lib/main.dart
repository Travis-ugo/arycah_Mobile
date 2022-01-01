import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_hr/general_page_marker.dart';
import 'package:provider/provider.dart';

import 'FireBase_Service/Authenticate/fireBaseAuth.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ChangeNotifierProvider(
      create: (context) => FireBaseAuthentication(),
      builder: (context, _) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Tahn',
            theme: ThemeData(
              primaryColor: const Color(0xFFf6f6f6),
              textTheme: GoogleFonts.montserratTextTheme(),
            ),
            home: const Homie());
      },
    );
  }
}
