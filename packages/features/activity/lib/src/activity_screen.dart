import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Aktivitas',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
