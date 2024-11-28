import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo2.png",
          width: 29.61.r,
          height: 40.r,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          "Bluebank",
          style: TextStyle(
            color: AppStyle.primaryBlue,
            fontSize: 32.sp,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
