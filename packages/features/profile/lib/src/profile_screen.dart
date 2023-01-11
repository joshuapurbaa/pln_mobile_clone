import 'package:flutter/material.dart';
import 'package:pln_mobile_clone/app_state_manager.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Provider.of<AppStateManager>(context, listen: false).signout();
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Sign Out'),
          ),
        ),
      ),
    );
  }
}
