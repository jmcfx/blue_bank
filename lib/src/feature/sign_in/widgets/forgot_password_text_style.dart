// forgot password Style ....

import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordTextStyle extends StatelessWidget {
  const ForgotPasswordTextStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Forgot password?",
          style: TextStyle(fontSize: 14.sp, color: AppStyle.primaryBlue),
        )
      ],
    );
  }
}
