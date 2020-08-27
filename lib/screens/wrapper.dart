import 'package:flutter/material.dart';
import 'package:real_time_coffee_app/screens/authentication/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate Widget
    //The wrapper will be listening for authenticate changes and show either of the above
    return Authenticate();
  }
}
