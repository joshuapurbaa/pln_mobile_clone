import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gaps extends StatelessWidget {
  const Gaps({
    super.key,
    this.horizontal = 0.0,
    this.vertical = 0.0,
  });

  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical.h,
      width: horizontal.w,
    );
  }
}
