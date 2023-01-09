import 'package:flutter/material.dart';
import 'package:style_resources/style_resources.dart';

import 'widgets/header_content.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              height: AppSize.size150,
              width: double.infinity,
              child: Image.asset(
                'assets/header-img.png',
                package: 'beranda',
                fit: BoxFit.cover,
              ),
            ),
            const HeaderContent(),
          ],
        ),
      ),
    );
  }
}
