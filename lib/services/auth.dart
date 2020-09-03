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

  //auth change user stream
  Stream<User> get user {
    //the user object which we get is implicitly  applied to our
    //function so as to format it
    //Remember that the user object we receive from FIREBASE is a
    //Firebase user type.
    //<FirebaseUser user>
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
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
