import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets.dart';

class ReferralContainer extends StatelessWidget {
  const ReferralContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(AppSize.size20),
      decoration: BoxDecoration(
        color: AppPalette.brown.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Text(
            Strings.referralTitle,
            style: textTheme.headlineSmall!.copyWith(
              fontSize: AppSize.size20,
              color: AppPalette.brown,
            ),
          ),
          Gaps(vertical: AppSize.size15),
          Text(
            Strings.referralBody1,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          Gaps(vertical: AppSize.size20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReferralBoxField(),
              ReferralBoxField(),
              ReferralBoxField(),
              ReferralBoxField(),
              ReferralBoxField(),
              ReferralBoxField(),
            ],
          ),
          Gaps(vertical: AppSize.size20),
          Text(
            Strings.referralBody2,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
