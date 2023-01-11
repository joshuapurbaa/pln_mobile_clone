import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import '../widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.lightGrey,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: const AppBarContent(),
      ),
      body: const SignInBody(),
    );
  }
}
