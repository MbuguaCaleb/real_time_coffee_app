import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  /*underscore means that it is a private property*/
  /*An object instance of our firebase authebtication*/
  /*_auth will give us access to all the authentication metnods*/
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon
  //It is an asynchronous task
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();

      FirebaseUser user = result.user;

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password

  //register with email and password

  //sign out

}
