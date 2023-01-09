import 'package:flutter/material.dart';

class PointScreen extends StatelessWidget {
  const PointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'PLN Point',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
