import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.appBar,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppPalette.primaryBlue,
                fontWeight: FontWeight.w400,
              ),
        ),
        Text(
          Strings.appBar2,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppPalette.black,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
