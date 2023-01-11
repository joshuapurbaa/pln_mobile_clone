import 'package:components_library/components_library.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_resources/style_resources.dart';

class AlertDialogContent extends StatelessWidget {
  const AlertDialogContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: ColoredBox(
        color: AppPalette.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryButton(
              color: AppPalette.primaryBlue,
              buttonLabel: 'Ya',
              onTap: () => Provider.of<AppStateManager>(context, listen: false)
                  .signout(),
            ),
            Gaps(vertical: AppSize.size5),
            PrimaryButton(
              color: AppPalette.white,
              buttonLabel: 'Tidak',
              labelColor: AppPalette.primaryBlue,
              onTap: () => Navigator.pop(context),
              borderColor: AppPalette.primaryBlue,
            ),
          ],
        ),
      ),
    );
  }
}
