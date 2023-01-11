import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets/alert_dialog_content.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: AppSize.size260,
            color: AppPalette.lightGrey,
            child: Stack(
              children: [
                SizedBox(
                  height: AppSize.size150,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/header-img.png',
                    package: 'profile',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: AppSize.size115,
                        width: AppSize.size115,
                        decoration: BoxDecoration(
                          color: AppPalette.white,
                          border: Border.all(color: AppPalette.primaryBlue),
                          borderRadius: BorderRadius.circular(AppSize.size40),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Y',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: AppSize.size35,
                                width: AppSize.size35,
                                decoration: BoxDecoration(
                                    color: AppPalette.white,
                                    border: Border.all(
                                        color: AppPalette.primaryBlue),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.edit_rounded,
                                  size: 20,
                                  color: AppPalette.primaryBlue,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Gaps(
                        vertical: 15,
                      ),
                      Text(
                        'Yoshua Purba',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const Gaps(
                        vertical: 15,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.size15),
            child: PrimaryButton(
              color: AppPalette.red.withOpacity(0.2),
              buttonLabel: 'Keluar',
              labelColor: AppPalette.red,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    insetPadding:
                        EdgeInsets.symmetric(horizontal: AppSize.size15),
                    titlePadding: EdgeInsets.all(AppSize.size15),
                    contentPadding: EdgeInsets.only(
                      bottom: AppSize.size15,
                      left: AppSize.size15,
                      right: AppSize.size15,
                    ),
                    title: Column(
                      children: [
                        Text(
                          'Peringatan',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Gaps(vertical: AppSize.size10),
                        Text(
                          'Apa yakin ingin keluar?',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    content: const AlertDialogContent(),
                  ),
                );
              },
            ),
          ),
          Gaps(
            vertical: AppSize.size30,
          )
        ],
      ),
    );
  }
}
