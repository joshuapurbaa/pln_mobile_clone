import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets/referral_container.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Akun',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppSize.size15),
        children: [
          const Gaps(vertical: 25),
          TextFormField(
            keyboardType: TextInputType.text,
            autofocus: true,
            decoration: AppStyle.inputDecoration(
              context,
              label: 'Nama Lengkap',
              hint: 'Electrizen',
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: AppStyle.inputDecoration(
              context,
              label: 'Email',
              hint: 'Email',
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: AppStyle.inputDecoration(
              context,
              label: 'No. Handphone',
              hint: 'No. Handphone',
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            obscureText: true,
            decoration: AppStyle.inputDecoration(
              context,
              label: 'Password',
              hint: 'Password',
              suffix: const Icon(Icons.visibility_off),
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            obscureText: true,
            decoration: AppStyle.inputDecoration(
              context,
              label: 'Masukan Ulang Password',
              hint: 'Masukan Ulang Password',
              suffix: const Icon(Icons.visibility_off),
            ),
          ),
          const Gaps(vertical: 25),
          const ReferralContainer(),
          const Gaps(vertical: 25),
          const PrimaryButton(
            color: AppPalette.primaryBlue,
            buttonLabel: 'Daftar',
          ),
        ],
      ),
    );
  }
}
