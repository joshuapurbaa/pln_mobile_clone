import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'box_referral_field.dart';

class ReferralContainer extends StatelessWidget {
  const ReferralContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSize.size20),
      decoration: BoxDecoration(
        color: AppPalette.brown.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Text(
            'Diundang Oleh Teman? (Opsional)',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: AppSize.size20,
                  color: AppPalette.brown,
                ),
          ),
          Gaps(vertical: AppSize.size15),
          Text(
            'Masukan 6 digit kode referral yang didapatkan dari teman atau keluarga',
            style: Theme.of(context).textTheme.bodyLarge,
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
            'Kosongkan kolom ini apabila Anda tidak memiliki kode referral',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
