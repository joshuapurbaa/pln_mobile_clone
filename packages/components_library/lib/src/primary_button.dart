import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.color,
    required this.buttonLabel,
    required this.onTap,
    this.labelColor = AppPalette.white,
    this.borderColor = AppPalette.transparent,
  }) : super(key: key);

  final Color color;
  final String buttonLabel;
  final VoidCallback onTap;
  final Color labelColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          side: BorderSide(color: borderColor),
        ),
        onPressed: onTap,
        child: Text(
          buttonLabel,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: labelColor,
              ),
        ),
      ),
    );
  }
}
