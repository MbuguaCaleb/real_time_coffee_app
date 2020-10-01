import 'package:flutter/material.dart';
import 'package:real_time_coffee_app/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  //text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text('Sign up to Coffee App'),
          actions: <Widget>[
            FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Sign In'),
                onPressed: () {
                  /**I cannot say this.toggleView() since
                   * that would refer to the state object wheareas
                   * toggle view is in our stateful widget
                   */
                  widget.toggleView();
                }),
          ]),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                    /*validator returns null when the validation condition passes*/
                    validator: (val) => val.isEmpty ? 'Enter and email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    }),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  validator: (val) =>
                      val.length < 6 ? 'Enter a password 6+ chars long' : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.pink[400],
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    /*formKey tracks the current state of our form and comes in
                    very handy during validation.
                    Validate() function evaluates the validator properties in our 
                    form fields.
                    Only when it receives null from each of the form fields is the 
                    form valid.
                    */
                    if (_formKey.currentState.validate()) {
                      print(email);
                      print(password);
                    }
                  },
                ),
              ],
            ),
          )),
    );
  }
}
