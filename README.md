<img src = "https://user-images.githubusercontent.com/68594765/163808937-26b089ec-59f9-4e2a-8983-fbe157649c2c.png" width = "1000px"> 

## About
the Arrycah mobile applications built with google Flutter framework is an ✅✅Easy job search mobile application, that brings tech employees and employers together 😎😎, to aid fast, safe, secure jobs and quality service as well to the job seekers and job givers.🚀 🚀 ⚡️⚡️ 
with the help of a third party Rest API(written and built with PHP lang and Laravel), data is sent and recieved with information of the employee and the emppoyers. 
for proper state management, Arycah has adopted the famous and wildly used state managementt solution *Riverpod* to properly manage and maintain its code and application state. 
the code structure consists of various folders/components which perform various task

welcome to the arycah code.
### the code is regularly edited/refactor
enjoy, do have a good time🔥✌🏽.

<div>
<img src = "https://user-images.githubusercontent.com/68594765/159685682-2b90c618-d0da-4f3d-87db-532c112956e6.jpg" width = "24%">
<img src = "https://user-images.githubusercontent.com/68594765/159685699-f7eb2e0c-4793-40ff-96e6-c94d5a2f8298.jpg" width = "24%">
<img src = "https://user-images.githubusercontent.com/68594765/159685711-fd8ca624-cf4d-40c6-b867-0dc0f7782ef9.jpg" width = "24%">
<img src = "https://user-images.githubusercontent.com/68594765/159685706-693092d8-22fc-4a81-a203-e34dba2dbe59.jpg" width = "24%">
</div>


### 🔧 Technologies & Tools
![](https://img.shields.io/badge/Code-Dart-informational?style=flat&logo=Dart&logoColor=aqua&color=87ceeb)
![](https://img.shields.io/badge/Framework-Flutter-informational?style=flat&logo=flutter&logoColor=cyan&color=00FFFF)
![](https://img.shields.io/badge/Tools-firebase-informational?style=flat&logo=firebase&logoColor=Yellow&color=ffca28)



### Packages✅
#### visit <a href="https://pub.dev/">pub.dev</a> to explore more flutter packages.


## Install & use dependencies <a href="https://pub.dev/packages/http">http:</a>📡

used to fecth api endpoint.

	run "flutter pub add http"
#### import
	import 'package:http/http.dart' as http;

	var url = Uri.parse('https://example.com/whatsit/create');
	var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
	print('Response status: ${response.statusCode}');
	print('Response body: ${response.body}');

	print(await http.read(Uri.parse('https://example.com/foobar.txt')));
	
## Install & use dependencies <a href="https://pub.dev/packages/flutter_hooks">flutter_hooks:</a>🪝
	run "flutter pub add flutter_hooks"
	
	class Example extends HookWidget {
	  const Example({Key key, required this.duration})
	      : super(key: key);

	  final Duration duration;

	  @override
	  Widget build(BuildContext context) {
	    final controller = useAnimationController(duration: duration);
	    return Container();
	  }
	}

## Install & use dependencies <a href="https://pub.dev/packages/firebase_core">firebase_core:</a>🔥☄️
	run "flutter pub add firebase_core"

Next, within the main function, ensure WidgetsFlutterBinding is initialized and then initialize Firebase:

	void main() async {
	  WidgetsFlutterBinding.ensureInitialized();
	  await Firebase.initializeApp(
	    options: DefaultFirebaseOptions.currentPlatform,
	  );
	  runApp(MyApp());
	}
## Install & use dependencies <a href="https://pub.dev/packages/cloud_firestore">cloud_firestore:</a>🔥⛅️
	run "flutter pub add cloud_firestore"

	FirebaseFirestore firestore = FirebaseFirestore.instance;

visit <a href="https://firebase.flutter.dev/docs/firestore/usage">firebase.flutter.dev</a> for better usage instruction

## Install & use dependencies <a href="https://pub.dev/packages/firebase_auth">firebase_auth:</a>🔥🔐
	flutter pub add firebase_auth
	
	import 'package:firebase_auth/firebase_auth.dart';
	
visit <a href="https://firebase.flutter.dev/docs/firestore/usage">firebase.flutter.dev</a> for better usage instruction

## Install & use dependencies <a href="https://pub.dev/packages/firebase_storage">firebase_storage:</a>🔥📦
	run "flutter pub add cloud_firestore"
#### import
	import 'package:cloud_firestore/cloud_firestore.dart';

To create a new Firestore instance, call the instance getter on FirebaseFirestore:

	FirebaseFirestore firestore = FirebaseFirestore.instance;

## Install & use dependencies <a href="https://pub.dev/packages/google_sign_in">google_sign_in:</a>🔏
	<!-- Put me in the [my_project]/ios/Runner/Info.plist file -->
	<!-- Google Sign-in Section -->
	<key>CFBundleURLTypes</key>
	<array>
		<dict>
			<key>CFBundleTypeRole</key>
			<string>Editor</string>
			<key>CFBundleURLSchemes</key>
			<array>
				<!-- TODO Replace this value: -->
				<!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
				<string>com.googleusercontent.apps.861823949799-vc35cprkp249096uujjn0vvnmcvjppkn</string>
			</array>
		</dict>
	</array>
	<!-- End of the Google Sign-in Section -->
	
#### import

	import 'package:google_sign_in/google_sign_in.dart'; 
	
	GoogleSignIn _googleSignIn = GoogleSignIn(
	  scopes: [
	    'email',
	    'https://www.googleapis.com/auth/contacts.readonly',
	  ],
	);
###### Example	
	Future<void> _handleSignIn() async {
	  try {
	    await _googleSignIn.signIn();
	  } catch (error) {
	    print(error);
	  }
	}
	
## Install & use dependencies <a href="https://pub.dev/packages/flutter_riverpod">flutter_riverpod:</a>🌊

	flutter pub add flutter_riverpod
#### import
	import 'package:flutter_riverpod/flutter_riverpod.dart';

Declare your providers as global variables:

	final counterProvider = StateNotifierProvider((ref) {
	  return Counter();
	});

	class Counter extends StateNotifier<int> {
	  Counter(): super(0);

	  void increment() => state++;
	}
	
Use them inside your widgets in a compile time safe way. No runtime exceptions!

	class Example extends ConsumerWidget {
	  @override
	  Widget build(BuildContext context, WidgetRef ref) {
	    final count = ref.watch(counterProvider);
	    return Text(count.toString());
	  }
	}	

## Install & use dependencies <a href="https://pub.dev/packages/file_picker">file_picker:</a>🪄
## Install & use dependencies <a href="https://pub.dev/packages/open_file">open_file:</a>
 run "flutter pub add open_file"
 
 #### import
 import 'package:open_file/open_file.dart';

## Install & use dependencies <a href="https://pub.dev/packages/font_awesome_flutter">font_awesome_flutter:</a> 
	flutter pub add font_awesome_flutter
#### import 
	import 'package:font_awesome_flutter/font_awesome_flutter.dart';
##### usage
	class MyWidget extends StatelessWidget {
	  Widget build(BuildContext context) {
	    return IconButton(
	      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
	      icon: FaIcon(FontAwesomeIcons.gamepad), 
	      onPressed: () { print("Pressed"); }
	     );
	  }
	}

## Install & use dependencies <a href="https://pub.dev/packages/google_fonts">google_fonts:</a>

	run "flutter pub add google_fonts"
#### import

	import 'package:google_fonts/google_fonts.dart';

##### example

	Text(
	      'You have pushed the button this many times:',
	      style: GoogleFonts.oswald(textStyle: headline4),
	    ),
## Install & use dependencies <a href="https://pub.dev/packages/iconly">iconly:</a>🚀
	run "flutter pub add iconly"
#### import

	import 'package:font_awesome_flutter/font_awesome_flutter.dart';
	
##### example

	class IconlyWidget extends StatelessWidget {

	  Widget build(BuildContext context) {
	    return IconButton(
	      icon: Icon(IconlyLight.search), 
	      onPressed: () { print("Pressed"); }
	     );
	  }
	}
	
## Install & use dependencies <a href="https://pub.dev/packages/intl">intl:</a>

## Install & use dependencies <a href="https://pub.dev/packages/localization">flutter_localizations:</a>🇳🇬🇬🇧🇰🇷

	flutter pub add localization
	
#### import 

	 import 'package:localization/localization.dart';

Now, add the delegate in MaterialApp or CupertinoApp and define a path where the translation json files will be:

	 @override
	  Widget build(BuildContext context) {
	    // set json file directory
	    // default value is ['lib/i18n']
	    LocalJsonLocalization.delegate.directories = ['lib/i18n'];

	    return MaterialApp(
	      localizationsDelegates: [
		// delegate from flutter_localization
		GlobalMaterialLocalizations.delegate,
		GlobalWidgetsLocalizations.delegate,
		GlobalCupertinoLocalizations.delegate,
		// delegate from localization package.
		LocalJsonLocalization.delegate,
	      ],
	      home: HomePage(),
	    );
	  }
	  
Add supported languages
This setting is important to tell Flutter which languages your app is prepared to work with. We can do this by simply adding the Locale in the supportedLocales property:

	return MaterialApp(
	  supportedLocales: [
	    Locale('en', 'US'),
	    Locale('es', 'ES'),
	    Locale('pt', 'BR'),
	  ],
	  ...
	);	  
### Working with Translations 🌐
This project relies on flutter_localizations and follows the official internationalization guide for Flutter.

#### Adding Strings
To add a new localizable string, open the app_en.arb file at lib/l10n/arb/app_en.arb.

	{
	    "@@locale": "en",
	    "counterAppBarTitle": "Counter",
	    "@counterAppBarTitle": {
		"description": "Text shown in the AppBar of the Counter Page"
	    }
	}
		
#### Then add a new key/value and description
 		
	{ 	
	   "@locale": "en",
	   "counterAppBarTitle": "Counter",
	   "@counterAppBarTitle": {
	   "description": "Text shown in the AppBar of the Counter Page"
	         },
	   "helloWorld": "Hello World",
	   "@helloWorld": {
	   "description": "Hello World Text"
	         },
	}
 
#### Use the new string

	import 'package:worddle/l10n/l10n.dart';

	@override
	Widget build(BuildContext context) {
	  final l10n = context.l10n;
	  return Text(l10n.helloWorld);
	}
	
#### Adding Supported Locales
Update the CFBundleLocalizations array in the Info.plist at ios/Runner/Info.plist to include the new locale.

   

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    
#### Adding Translations
	For each supported locale, add a new ARB file in lib/l10n/arb.
	├── l10n
	│   ├── arb
	│   │   ├── app_en.arb
	│   │   └── app_es.arb
#### Add the translated strings to each .arb file:
app_en.arb

	{
	    "@@locale": "en",
	    "counterAppBarTitle": "Counter",
	    "@counterAppBarTitle": {
		"description": "Text shown in the AppBar of the Counter Page"
	    }
	}
app_es.arb

	{
	    "@@locale": "es",
	    "counterAppBarTitle": "Contador",
	    "@counterAppBarTitle": {
		"description": "Texto mostrado en la AppBar de la página del contador"
	    }
	}


🔥🔥🔥🔥🔥


