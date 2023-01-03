import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.size20),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Lanjutkan',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
