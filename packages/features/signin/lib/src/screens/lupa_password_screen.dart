import 'package:components_library/components_library.dart';
import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class LupaPasswordScreen extends StatelessWidget {
  const LupaPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lupa Password',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.size15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Gaps(vertical: 40),
            Text(
              'Masukkan email Anda dan kami akan mengirim email dengan instruksi untuk mengatur ulang kata sanda Anda',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppPalette.textGrey),
            ),
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
            const Spacer(),
            PrimaryButton(
              onTap: () => Navigator.pop(context),
              color: AppPalette.primaryBlue,
              buttonLabel: 'Kirim',
            ),
            const Gaps(vertical: 30),
          ],
        ),
      ),
    );
  }
}
