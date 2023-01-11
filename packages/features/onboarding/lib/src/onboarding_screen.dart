import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/src/providers/onboarding_provider.dart';
import 'package:provider/provider.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets/onboard_page_view.dart';
import 'widgets/onboarding_appbar.dart';
import 'widgets/onboarding_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnboardingProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: AppPalette.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: OnboardingAppBar(),
      ),
      body: Stack(
        children: [
          OnboardPageView(
            controller: provider.controller,
            onPageChanged: (int index) {
              provider.onSliding(index);
            },
          ),
          const OnboardingButton(),
          const Gaps(
            vertical: 20,
          )
        ],
      ),
    );
  }
}
