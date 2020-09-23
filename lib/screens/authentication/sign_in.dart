import 'package:flutter/material.dart';
import 'package:real_time_coffee_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

/*State object*/
class _SignInState extends State<SignIn> {
  /*bringing the auth service provider class*/

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Coffee App'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(onChanged: (val) {}),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.pink[400],
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {},
                ),
              ],
            ),
          )),
    );
  }
}
