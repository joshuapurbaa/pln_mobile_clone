import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class ChildPageView extends StatelessWidget {
  const ChildPageView({
    Key? key,
    required this.imagePath,
    required this.headline,
    required this.bodyText1,
    required this.colorText,
    this.bodyText2,
  }) : super(key: key);

  final String imagePath;
  final String headline;
  final String bodyText1;
  final String colorText;
  final String? bodyText2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.size30),
          child: Image.asset(
            imagePath,
            package: 'onboarding',
          ),
        ),
        const Gaps(
          vertical: 70,
        ),
        Text(
          headline,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Gaps(
          vertical: 15,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: bodyText1,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: colorText,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppPalette.primaryBlue,
                    ),
              ),
              TextSpan(
                text: bodyText2,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
