import 'package:flutter/material.dart';
import 'package:real_time_coffee_app/services/auth.dart';

class Home extends StatelessWidget {
  /*remember that when i instantitate a class i can be able
  to get the attributes and methods*/

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Coffee App'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                //remember that after signing out from the stream
                //i get a null
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'))
        ],
      ),
    );
  }
}
