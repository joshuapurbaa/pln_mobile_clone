import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';

import 'package:style_resources/style_resources.dart';

import 'privacy_checkbox.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: AppSize.size15),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.size20),
          child: Image.asset(
            'assets/signin1.png',
            package: 'signin',
          ),
        ),
        const Gaps(vertical: 30),
        Center(
          child: Text(
            'Silahkan masuk dengan nomor handphone Anda',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const Gaps(vertical: 20),
        TextField(
          keyboardType: TextInputType.phone,
          decoration: AppStyle.inputDecoration(
            context,
            prefix: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/indonesia_flag.png',
                  package: 'signin',
                  width: 20,
                ),
                const Gaps(horizontal: 10),
                Text(
                  '+62  ',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: AppPalette.black),
                )
              ],
            ),
            label: 'Masukan nomor HP',
            hint: '85123456789',
          ),
        ),
        const Gaps(vertical: 20),
        PrimaryButton(
          buttonLabel: 'Kirim',
          color: isActive ? AppPalette.primaryBlue : AppPalette.buttonDisabled,
        ),
        const Gaps(vertical: 20),
        Center(
          child: GestureDetector(
            onTap: () =>
                Navigator.pushReplacementNamed(context, '/signin-with-another'),
            child: Text(
              'Masuk menggunakan metode lain',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppPalette.primaryBlue,
                  ),
            ),
          ),
        ),
        const Gaps(vertical: 20),
        const TermsCheckbox()
      ],
    );
  }
}
