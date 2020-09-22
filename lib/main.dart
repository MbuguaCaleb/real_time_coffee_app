import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_time_coffee_app/models/user.dart';
import 'package:real_time_coffee_app/screens/wrapper.dart';
import 'package:real_time_coffee_app/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //StreamProvider<User> means that we are expecting a userObject from out stream
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
