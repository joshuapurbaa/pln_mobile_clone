import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets/widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.appBar,
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
              label: Strings.label1,
              hint: Strings.hint1,
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: AppStyle.inputDecoration(
              context,
              label: Strings.label2,
              hint: Strings.hint2,
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: AppStyle.inputDecoration(
              context,
              label: Strings.label3,
              hint: Strings.hint3,
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            obscureText: true,
            decoration: AppStyle.inputDecoration(
              context,
              label: Strings.label4,
              hint: Strings.hint4,
              suffix: const Icon(Icons.visibility_off),
            ),
          ),
          const Gaps(vertical: 25),
          TextFormField(
            obscureText: true,
            decoration: AppStyle.inputDecoration(
              context,
              label: Strings.label5,
              hint: Strings.hint5,
              suffix: const Icon(Icons.visibility_off),
            ),
          ),
          const Gaps(vertical: 25),
          const ReferralContainer(),
          const Gaps(vertical: 25),
          PrimaryButton(
            onTap: () {},
            color: AppPalette.primaryBlue,
            buttonLabel: Strings.button,
          ),
        ],
      ),
    );
  }
}
