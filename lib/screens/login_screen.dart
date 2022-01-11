import 'package:flutter/material.dart';
import '../src/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  //creating a globalKey
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = "";

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Form(
          key: formKey,
          child: Column(
            children: [
              emailField(),
              passwordField(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              sumbitButton(),
            ],
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      validator: validateEmail,
      onSaved: (value) {
        email = value!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'not less than 8 characters',
      ),
      validator: validatePassword,
      onSaved: (value) {
        password = value!;
      },
    );
  }

  Widget sumbitButton() {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState?.save();

          //take *both* email and password and post them to some API
          print('Time to post $email and $password to my API');
        }
      },
      child: Text('Submit'),
    );
  }
}
