import 'package:flutter/material.dart';
import 'package:real_time_coffee_app/screens/authentication/register.dart';
import 'package:real_time_coffee_app/screens/authentication/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  /*Initializing a state which is a boolean for toggling between signIn 
  and register*/
  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      /*passing toggle view function as a prop*/
      return Container(child: SignIn(toggleView: toggleView));
    } else {
      return Container(child: Register(toggleView: toggleView));
    }
  }
}
