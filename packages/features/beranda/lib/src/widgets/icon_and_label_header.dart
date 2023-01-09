import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class IconAndLabelHeader extends StatelessWidget {
  const IconAndLabelHeader({
    Key? key,
    required this.iconName,
    required this.label,
    this.color,
  }) : super(key: key);

  final String iconName;
  final String label;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 2,
          type: MaterialType.button,
          color: AppPalette.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.size15),
          ),
          child: Padding(
            padding: EdgeInsets.all(AppSize.size10),
            child: Image.asset(
              iconName,
              package: 'beranda',
              color: color,
              width: 30,
            ),
          ),
        ),
        const Gaps(vertical: 10),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
