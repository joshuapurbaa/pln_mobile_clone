import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.color,
    required this.buttonLabel,
  }) : super(key: key);

  final Color color;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          buttonLabel,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
