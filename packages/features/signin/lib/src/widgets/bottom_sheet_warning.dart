import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class BottomSheetWarning extends StatelessWidget {
  const BottomSheetWarning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.size180,
      padding: EdgeInsets.all(AppSize.size10),
      decoration: BoxDecoration(
          color: AppPalette.white,
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(AppSize.size20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Gaps(vertical: 4),
          Text(
            'Informasi',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            'Mohon Anda dapat menyetujui syarat dan Ketentuan serta Kebijakan Privasi terlebih dahulu',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppPalette.textGrey,
                  fontSize: AppSize.size12,
                ),
            textAlign: TextAlign.center,
          ),
          PrimaryButton(
            onTap: () => Navigator.pop(context),
            color: AppPalette.primaryBlue,
            buttonLabel: 'OK',
          )
        ],
      ),
    );
  }
}
