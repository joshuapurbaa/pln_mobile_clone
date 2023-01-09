import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'icon_and_label_header.dart';
import 'wallet_and_point_widget.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppSize.size110,
      right: 0,
      left: 0,
      child: Column(
        children: [
          const WalletAndPointWidget(),
          Gaps(vertical: AppSize.size20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconAndLabelHeader(
                iconName: 'assets/kelistrikan.png',
                label: 'Kelistrikan',
                color: AppPalette.red,
              ),
              IconAndLabelHeader(
                iconName: 'assets/internet.png',
                label: 'Internet',
                color: AppPalette.primaryBlue,
              ),
              IconAndLabelHeader(
                iconName: 'assets/listrikqu.png',
                label: 'ListrikQu',
              ),
              IconAndLabelHeader(
                iconName: 'assets/ev.png',
                label: 'Electric Vehicle',
                color: AppPalette.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
