import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/signin.dart';
import 'package:signin/src/widgets/privacy_checkbox.dart';
import 'package:signup/signup.dart';
import 'package:style_resources/style_resources.dart';

import '../widgets/appbar_content.dart';
import '../widgets/button_with_icon.dart';

class SignInAnotherMethodScreen extends StatelessWidget {
  const SignInAnotherMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.white,
      appBar: AppBar(
        toolbarHeight: AppSize.size100,
        centerTitle: true,
        title: const AppBarContent(),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.size30),
            child: Image.asset(
              'assets/signin1.png',
              package: 'signin',
            ),
          ),
          const Gaps(vertical: 40),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(AppSize.size10),
              child: Consumer<SignInProvider>(
                builder: (context, provider, child) {
                  final val = provider.signInChoicesVal;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const ButtonWithIcon(
                        imagePath: 'assets/google.png',
                        label: 'Masuk dengan Google',
                        bgColor: AppPalette.white,
                      ),
                      const Gaps(vertical: 5),
                      ButtonWithIcon(
                        imagePath: 'assets/mail.png',
                        label: 'Masuk dengan Email',
                        bgColor: AppPalette.primaryBlue,
                        borderColor: AppPalette.primaryBlue,
                        labelColor: AppPalette.white,
                        iconColor: AppPalette.white,
                        ctx: context,
                        goTo: '/signin-with-email',
                      ),
                      const Gaps(vertical: 5),
                      if (val)
                        const ButtonWithIcon(
                          imagePath: 'assets/phone.png',
                          label: 'Masuk dengan No. Handphone',
                          bgColor: AppPalette.primaryBlue,
                          borderColor: AppPalette.primaryBlue,
                          labelColor: AppPalette.white,
                          iconColor: AppPalette.white,
                        ),
                      const Gaps(vertical: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppPalette.grey,
                        ),
                        onPressed: () {
                          provider.openChoices();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                val ? 'Tutup' : 'Lihat Semua Pilihan',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      color: AppPalette.black,
                                    ),
                              ),
                              Icon(
                                val
                                    ? Icons.arrow_drop_up
                                    : Icons.arrow_drop_down,
                                color: AppPalette.black,
                                size: AppSize.size30,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Gaps(vertical: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Belum punya akun? ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            TextSpan(
                              onEnter: (event) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignupScreen(),
                                  ),
                                );
                              },
                              text: 'Daftar sekarang',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppPalette.primaryBlue,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const Gaps(vertical: 20),
                      const TermsCheckbox(),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
