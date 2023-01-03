import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:style_resources/style_resources.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller,
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
