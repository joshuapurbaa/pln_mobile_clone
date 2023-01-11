import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/src/providers/onboarding_provider.dart';
import 'package:pln_mobile_clone/app_state_manager.dart';
import 'package:provider/provider.dart';
import 'package:style_resources/style_resources.dart';

import 'dot_indicator.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Consumer<OnboardingProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: AppSize.size30,
              left: AppSize.size15,
              right: AppSize.size15,
            ),
            child: provider.isLastIndex
                ? PrimaryButton(
                    onTap: () {
                      Provider.of<AppStateManager>(context, listen: false)
                          .onboarded();
                    },
                    color: AppPalette.primaryBlue,
                    buttonLabel: 'Lanjutkan',
                  )
                : const DotIndicator(),
          );
        },
      ),
    );
  }
}
