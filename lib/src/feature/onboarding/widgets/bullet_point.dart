import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container bulletPoint({bool isTrue = false}) {
  return Container(
    width: 5.r,
    height: 6.r,
    decoration: BoxDecoration(
      color: isTrue ? AppStyle.subtitleColor : Colors.black,
      shape: BoxShape.circle,
    ),
  );
}
