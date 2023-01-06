import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/signin.dart';
import 'package:style_resources/style_resources.dart';

class TermsCheckbox extends StatelessWidget {
  const TermsCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignInProvider>(context);
    return Row(
      children: [
        SizedBox(
          height: AppSize.size35,
          width: AppSize.size35,
          child: Checkbox(
            activeColor: AppPalette.primaryBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            value: provider.termsCheckboxVal,
            onChanged: (value) {
              provider.onTapped(value!);
            },
          ),
        ),
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Dengan masuk dan daftar akun, Anda menyetujui ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Syarat\ndan Ketentuan ',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppPalette.primaryBlue,
                    ),
              ),
              TextSpan(
                text: 'serta ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Kebijakan Privasi',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppPalette.primaryBlue,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
