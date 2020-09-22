import 'package:firebase_auth/firebase_auth.dart';
import 'package:real_time_coffee_app/models/user.dart';

class AuthService {
  /*underscore means that it is a private property*/
  /*An object instance of our firebase authebtication*/
  /*_auth will give us access to all the authentication metnods*/
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based  on FirebaseUser
  //Remember that this is dependent from the user object returned from firebase
  User _userFromFirebaseUser(FirebaseUser user) {
/*Evaluating the return value via a ternary operator*/
    return user != null ? User(uid: user.uid) : null;
  }

  /*
  FirebaseUser  is returned as a stream  everytime there is a successful signIn.

  _auth.onAuthStateChanged return a firebase user or null based on the current login stattus

  I am then customzing the object returned via our custom class

  Thus our stream returns Stream<User> otherwise it would have returned
  Stream<FirebaseUser>

  */

  Stream<User> get user {
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        //implicitly applyying map so as to write cleaner code
        .map(_userFromFirebaseUser);
  }

  //sign in anon
  //It is an asynchronous task
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();

      FirebaseUser user = result.user;
      /*The user object is like a created token*/
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password

  //register with email and password

  //sign out

}
