import 'package:flutter/material.dart';
import 'package:onboarding/src/providers/onboarding_provider.dart';
import 'package:pln_mobile_clone/app_state_manager.dart';
import 'package:provider/provider.dart';
import 'package:style_resources/style_resources.dart';

class OnboardingAppBar extends StatelessWidget {
  const OnboardingAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(builder: (
      context,
      provider,
      child,
    ) {
      return AppBar(
        leading: provider.showBackArrow
            ? IconButton(
                onPressed: () {
                  provider.controller.previousPage(
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
            child: GestureDetector(
              onTap: () {
                Provider.of<AppStateManager>(context, listen: false)
                    .onboarded();
              },
              child: Center(
                child: Text(
                  'Lewati',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
