import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:style_resources/style_resources.dart';

class ReferralBoxField extends StatelessWidget {
  const ReferralBoxField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.size55,
      width: AppSize.size45,
      child: TextField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: '',
          fillColor: AppPalette.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.white,
            ),
          ),
        ),
      ),
    );
  }
}
