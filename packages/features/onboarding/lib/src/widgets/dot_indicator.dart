import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:style_resources/style_resources.dart';

import '../../onboarding.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<OnboardingProvider>(context, listen: false).controller;
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: WormEffect(
        activeDotColor: AppPalette.primaryBlue,
        dotColor: AppPalette.primaryBlue,
        paintStyle: PaintingStyle.stroke,
        dotWidth: AppSize.size8,
        dotHeight: AppSize.size8,
      ),
    );
  }
}
