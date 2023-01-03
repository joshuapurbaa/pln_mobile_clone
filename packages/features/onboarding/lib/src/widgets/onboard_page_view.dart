import 'package:flutter/material.dart';

import 'child_page_view.dart';

class OnboardPageView extends StatelessWidget {
  const OnboardPageView({
    Key? key,
    required PageController controller,
    this.onPageChanged,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      onPageChanged: onPageChanged,
      children: const [
        ChildPageView(
          imagePath: 'assets/ob1.png',
          headline: 'Bayar Listrik dan Beli Token',
          bodyText1:
              'Cukup masukkan ID pelanggan Anda satu kali saja\nuntuk kemudahan ',
          colorText: 'membayar tagihan dan membeli\ntoken listrik ',
        ),
        ChildPageView(
          imagePath: 'assets/ob2.png',
          headline: 'Informasi Pemadaman',
          bodyText1: 'Dapatkan ',
          colorText: 'informasi pemadaman ',
          bodyText2: 'dan monitor progress\nperbaikan di lokasi anda',
        ),
        ChildPageView(
          imagePath: 'assets/ob3.png',
          headline: 'Pemasangan Internet',
          bodyText1: 'Nikmati ',
          colorText: 'layanan internet dan broadband ',
          bodyText2:
              'dan paket\ninternet TV dengan jaringan Fiber Optic yang andal',
        ),
      ],
    );
  }
}
