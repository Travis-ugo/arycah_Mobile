import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_hr/general_page_marker.dart';
import 'package:mobile_hr/service/api/arycah_api.dart';
import 'views/Job_Seeker/On_Boarding/select_page.dart';

import 'package:http/http.dart' as http;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(child: MyApp()),
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tahn',
      theme: ThemeData(
        primaryColor: const Color(0xFFf6f6f6),
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const Call(),
    );
  }
}

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  void initState() {
    super.initState();

    // fetch Data from API
    // apiCalls();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Center(child: Text("API fetch")),
          onPressed: () async {
            var client = http.Client();
            try {
              // var response = await client.post(
              //     Uri.https('example.com', 'whatsit/create'),
              //     body: {'name': 'doodle', 'color': 'blue'});

              var uri = Uri.parse('https://aricah.herokuapp.com/');
              var response = await client.get(uri);

              if (response.statusCode == 200) {
                var json = response.body;

                print(json);
                return;
              }
            } finally {
              client.close();
            }
          }),
      // body: Text(json),
    );
  }
}
