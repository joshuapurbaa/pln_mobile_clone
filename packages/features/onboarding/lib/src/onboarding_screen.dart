import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets/dot_indicator.dart';
import 'widgets/onboard_page_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();

  bool isLastIndex = false;
  bool showArrowBack = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.white,
      appBar: AppBar(
        leading: showArrowBack
            ? IconButton(
                onPressed: () {
                  _controller.previousPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.easeInToLinear);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
                color: AppPalette.black,
              )
            : const SizedBox(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppSize.size10),
            child: Center(
              child: Text(
                'Lewati',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          OnboardPageView(
            controller: _controller,
            onPageChanged: (int index) {
              switch (index) {
                case 2:
                  setState(() {
                    isLastIndex = true;
                    showArrowBack = true;
                  });
                  break;
                case 1:
                  setState(() {
                    showArrowBack = true;
                    isLastIndex = false;
                  });
                  break;
                default:
                  setState(
                    () {
                      isLastIndex = false;
                      showArrowBack = false;
                    },
                  );
              }
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: AppSize.size30),
              child: isLastIndex
                  ? const PrimaryButton(
                      color: AppPalette.primaryBlue,
                      buttonLabel: 'Lanjutkan',
                    )
                  : DotIndicator(controller: _controller),
            ),
          ),
          const Gaps(
            vertical: 20,
          )
        ],
      ),
    );
  }
}
