import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class AppStyle {
  AppStyle._();

  static InputDecoration inputDecoration(
    BuildContext context, {
    required String label,
    required String hint,
    Widget? prefix,
    Widget? suffix,
  }) {
    return InputDecoration(
      suffixIcon: suffix,
      prefix: prefix,
      labelText: label,
      labelStyle: Theme.of(context).textTheme.labelSmall,
      fillColor: AppPalette.tFieldBg,
      hintText: hint,
      hintStyle: Theme.of(context).textTheme.labelSmall,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppPalette.borderColor,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppPalette.primaryBlue,
        ),
      ),
    );
  }
}
