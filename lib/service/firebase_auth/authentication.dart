import '../../views/library_imports.dart';

class FireBaseAuthentication extends ChangeNotifier {
  // Trigger the authentication flow
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;

      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth!.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseException catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

  // check for existing Email and password
  Future<void> verifyEmail(
    void Function() displayDialogueBox,
    String email,
  ) async {
    try {
      var methods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      if (!methods.contains('password')) {
        displayDialogueBox();
      }
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }

  // Register user Email and Password
  Future<void> registerAccount({
    required String email,
    required String displayName,
    required String password,
  }) async {
    try {
      var credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      var user = credential.user;
      await credential.user!.updateDisplayName(displayName);
      await DataBaseService(uid: user!.uid)
          .upDateData(displayName, 'photo Url');
      // await credential.user!.updatePhotoURL(photoURL);`
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

  // log user out
  Future logOut() async {
    await FirebaseAuth.instance.signOut();
    googleSignIn.disconnect();

    notifyListeners();
  }
}

//

class DataBaseService {
  final String? uid;
  DataBaseService({this.uid});
  final brewCollection = FirebaseFirestore.instance.collection('users');

  Future upDateData(String name, String datatext) async {
    return await brewCollection.doc(uid).set({
      'Name': name,
      'Datatext': datatext,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    });
  }
  // User? user = FirebaseAuth.instance.currentUser;

  // Future uDateData(String name, String photoUrl) async {
  //   return await FirebaseFirestore
  //   .instance
  //   .collection('orders')
  //   .doc(user!.uid)
  // .collection(
  //     "user_orders")
  //   .add({
  //       //add your data that you want to upload
  //       });
  // }
  Future upData(String name, String photoUrl) async {
    return await brewCollection.add(<String, dynamic>{
      'text': 'hi',
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }
}
