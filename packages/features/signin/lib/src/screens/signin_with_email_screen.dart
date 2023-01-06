import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:signin/src/helper/navigation.dart';
import 'package:style_resources/style_resources.dart';

class SignInWithEmailScreen extends StatelessWidget {
  const SignInWithEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Masuk',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Gaps(vertical: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.size10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: AppStyle.inputDecoration(
                context,
                label: 'Email',
                hint: 'email@email.com',
              ),
            ),
          ),
          const Gaps(vertical: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.size10),
            child: TextFormField(
              obscureText: true,
              decoration: AppStyle.inputDecoration(
                context,
                label: 'Password',
                hint: 'Password',
              ),
            ),
          ),
          const Gaps(vertical: 30),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  AppNavigation.goTo(context, '/lupa-passoword');
                },
                child: Text(
                  'Lupa Password',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppPalette.textGrey),
                ),
              ),
            ),
          ),
          const Spacer(),
          const PrimaryButton(
            color: AppPalette.primaryBlue,
            buttonLabel: 'Masuk',
          ),
          const Gaps(vertical: 30),
        ],
      ),
    );
  }
}
