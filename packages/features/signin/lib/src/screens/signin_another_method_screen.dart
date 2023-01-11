import 'package:components_library/components_library.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pln_mobile_clone/app_route.dart';
import 'package:provider/provider.dart';
import 'package:signin/signin.dart';
import 'package:signin/src/widgets/privacy_checkbox.dart';
import 'package:style_resources/style_resources.dart';

import '../widgets/appbar_content.dart';
import '../widgets/button_with_icon.dart';

class SigninWithAnotherMethodScreen extends StatefulWidget {
  const SigninWithAnotherMethodScreen({super.key});

  @override
  State<SigninWithAnotherMethodScreen> createState() =>
      _SigninWithAnotherMethodScreenState();
}

class _SigninWithAnotherMethodScreenState
    extends State<SigninWithAnotherMethodScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _alignmentAnimation;
  late Animation<int> _positionValue;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1200), vsync: this);

    final Animation<double> curve =
        CurvedAnimation(parent: _controller, curve: Curves.easeInCubic);

    _alignmentAnimation =
        AlignmentTween(begin: Alignment.center, end: Alignment.topCenter)
            .animate(curve);

    _positionValue =
        IntTween(begin: AppSize.size336.toInt(), end: 0).animate(curve);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.white,
      appBar: AppBar(
        toolbarHeight: AppSize.size100,
        centerTitle: true,
        title: const AppBarContent(),
      ),
      body: AnimatedBuilder(
        animation: Listenable.merge([_alignmentAnimation, _positionValue]),
        builder: (context, child) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: _alignmentAnimation.value,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.size30),
                  child: Image.asset(
                    'assets/signin1.png',
                    package: 'signin',
                  ),
                ),
              ),
              Positioned.fill(
                bottom: _positionValue.value.toDouble(),
                child: Padding(
                  padding: EdgeInsets.all(AppSize.size15),
                  child: Consumer<SignInProvider>(
                    builder: (context, provider, child) {
                      final val = provider.signInChoicesVal;
                      final textTheme = provider.textTheme(context);
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const ButtonWithIcon(
                            imagePath: 'assets/google.png',
                            label: 'Masuk dengan Google',
                            bgColor: AppPalette.white,
                          ),
                          const Gaps(vertical: 7),
                          ButtonWithIcon(
                            imagePath: 'assets/mail.png',
                            label: 'Masuk dengan Email',
                            bgColor: AppPalette.primaryBlue,
                            borderColor: AppPalette.primaryBlue,
                            labelColor: AppPalette.white,
                            iconColor: AppPalette.white,
                            ctx: context,
                            goTo: Routes.signinWithEmail.name,
                          ),
                          const Gaps(vertical: 7),
                          AnimatedCrossFade(
                            firstChild: const SizedBox(),
                            secondChild: const ButtonWithIcon(
                              imagePath: 'assets/phone.png',
                              label: 'Masuk dengan No. Handphone',
                              bgColor: AppPalette.primaryBlue,
                              borderColor: AppPalette.primaryBlue,
                              labelColor: AppPalette.white,
                              iconColor: AppPalette.white,
                            ),
                            crossFadeState: val
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            firstCurve: Curves.easeIn,
                            secondCurve: Curves.easeInOut,
                            sizeCurve: Curves.easeInOutCirc,
                            duration: const Duration(milliseconds: 400),
                          ),
                          const Gaps(vertical: 7),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppPalette.grey,
                            ),
                            onPressed: () {
                              provider.openChoices();
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSize.size20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    val ? 'Tutup' : 'Lihat Semua Pilihan',
                                    style: textTheme.labelMedium!.copyWith(
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
                                  style: textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.goNamed(Routes.signup.name);
                                    },
                                  text: 'Daftar sekarang',
                                  style: textTheme.bodySmall!.copyWith(
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
          );
        },
      ),
    );
  }
}
