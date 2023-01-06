import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lupa Password',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
    );
  }
}
