import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/signin.dart';
import 'package:style_resources/style_resources.dart';

import '../helper/navigation.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.bgColor,
    this.borderColor = AppPalette.borderColor,
    this.labelColor = AppPalette.black,
    this.iconColor,
    this.ctx,
    this.goTo,
  }) : super(key: key);

  final String imagePath;
  final String label;
  final Color bgColor;
  final Color borderColor;
  final Color labelColor;
  final Color? iconColor;
  final BuildContext? ctx;
  final String? goTo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        side: BorderSide(color: borderColor),
      ),
      onPressed: () {
        final termsCheckbox =
            Provider.of<SignInProvider>(context, listen: false)
                .termsCheckboxVal;

        if (termsCheckbox == false) {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(AppSize.size20))),
            context: context,
            builder: (context) {
              return Container(
                height: AppSize.size180,
                padding: EdgeInsets.all(AppSize.size10),
                decoration: BoxDecoration(
                    color: AppPalette.white,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(AppSize.size20))),
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
                    const PrimaryButton(
                      color: AppPalette.primaryBlue,
                      buttonLabel: 'OK',
                    )
                  ],
                ),
              );
            },
          );
        } else {
          if (ctx != null && goTo != null) {
            AppNavigation.goTo(ctx!, goTo!);
          }
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.size10),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              width: AppSize.size20,
              package: 'signin',
              color: iconColor,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: labelColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
