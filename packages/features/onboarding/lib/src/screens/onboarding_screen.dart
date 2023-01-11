import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import '../widgets/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: OnboardingAppBar(),
      ),
      body: Stack(
        children: const [
          OnboardPageView(),
          OnboardingButton(),
        ],
      ),
    );
  }
}
