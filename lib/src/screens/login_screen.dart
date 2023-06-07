import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: const EdgeInsets.only(top: 25.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        return (value != null && value.contains('@'))
            ? null
            : 'Value must be a proper email';
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      obscureText: true,
      validator: (value) {
        return (value != null && value.length > 7)
            ? null
            : 'Password must be 8 characters long';
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: const Text('Submit!'),
      onPressed: () {
        formKey.currentState?.validate();
      },
    );
  }
}
