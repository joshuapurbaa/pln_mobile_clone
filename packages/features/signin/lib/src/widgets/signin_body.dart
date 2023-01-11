import 'package:components_library/components_library.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pln_mobile_clone/app_route.dart';
import 'package:provider/provider.dart';
import 'package:signin/signin.dart';

import 'package:style_resources/style_resources.dart';

import 'widgets.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.symmetric(horizontal: AppSize.size15),
        child: Consumer<SignInProvider>(
          builder: (context, provider, child) {
            final textTheme = provider.textTheme(context);
            return Column(
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
                    Strings.body,
                    style: textTheme.bodyMedium,
                  ),
                ),
                const Gaps(vertical: 20),
                TextField(
                  focusNode: provider.focusNode,
                  onChanged: (value) {
                    provider.onButtonTapped(value);
                  },
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
                          style: textTheme.labelSmall!
                              .copyWith(color: AppPalette.black),
                        )
                      ],
                    ),
                    label: Strings.label,
                    hint: Strings.hint,
                  ),
                ),
                const Gaps(vertical: 20),
                PrimaryButton(
                  onTap: () {
                    final termsCheckbox = provider.termsCheckboxVal;

                    if (provider.isBottonActive) {
                      if (termsCheckbox == false) {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(AppSize.size20))),
                          context: context,
                          builder: (context) {
                            return const BottomSheetWarning();
                          },
                        );
                      } else {
                        Provider.of<AppStateManager>(context, listen: false)
                            .signin();
                      }
                    }
                  },
                  buttonLabel: Strings.button,
                  color: provider.isBottonActive
                      ? AppPalette.primaryBlue
                      : AppPalette.buttonDisabled,
                ),
                const Gaps(vertical: 20),
                Center(
                  child: GestureDetector(
                    onTap: () =>
                        context.goNamed(Routes.signinWithAnotherMethod.name),
                    child: Text(
                      Strings.body2,
                      style: textTheme.bodyMedium!.copyWith(
                        color: AppPalette.primaryBlue,
                      ),
                    ),
                  ),
                ),
                const Gaps(vertical: 20),
                const TermsCheckbox(),
                const Gaps(vertical: 20),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
