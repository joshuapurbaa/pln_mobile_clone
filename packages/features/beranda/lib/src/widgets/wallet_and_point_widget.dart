import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class WalletAndPointWidget extends StatelessWidget {
  const WalletAndPointWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSize.size15),
      padding: EdgeInsets.all(AppSize.size15),
      decoration: BoxDecoration(
        color: AppPalette.white,
        borderRadius: BorderRadius.circular(AppSize.size20),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image.asset(
                    'assets/wallet.png',
                    package: 'beranda',
                    width: 20,
                    color: AppPalette.primaryBlue,
                  ),
                  SizedBox(width: AppSize.size15),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Saldo PLN Mobile',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: AppSize.size35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Refresh',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(color: AppPalette.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: VerticalDivider(
                color: AppPalette.primaryBlue.withOpacity(0.3),
                thickness: 2,
                width: AppSize.size10,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppPalette.primaryBlue,
                    radius: 12,
                    child: Text(
                      'P',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppPalette.white),
                    ),
                  ),
                  SizedBox(width: AppSize.size15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Poin Saya',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        '0 Poin',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppPalette.black,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
