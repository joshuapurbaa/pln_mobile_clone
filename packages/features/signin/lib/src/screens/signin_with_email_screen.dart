import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:pln_mobile_clone/app_route.dart';
import 'package:pln_mobile_clone/app_state_manager.dart';
import 'package:provider/provider.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.size15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Gaps(vertical: 20),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: AppStyle.inputDecoration(
                context,
                label: 'Email',
                hint: 'email@email.com',
              ),
            ),
            const Gaps(vertical: 20),
            TextFormField(
              obscureText: true,
              decoration: AppStyle.inputDecoration(
                context,
                label: 'Password',
                hint: 'Password',
              ),
            ),
            const Gaps(vertical: 30),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  AppNavigation.goNamed(context, Routes.lupaPassword.name);
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
            const Spacer(),
            PrimaryButton(
              onTap: () {
                Provider.of<AppStateManager>(context, listen: false).signin();
              },
              color: AppPalette.primaryBlue,
              buttonLabel: 'Masuk',
            ),
            const Gaps(vertical: 30),
          ],
        ),
      ),
    );
  }
}
