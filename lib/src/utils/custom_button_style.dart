import 'package:blue_bank/src/utils/app_style.dart';
import 'package:blue_bank/src/utils/button_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonStyle extends StatelessWidget {
  const CustomButtonStyle(
      {super.key,
      required this.text,
      this.isCreateAccount = false,
      required this.onTap});
  final String text;
  final bool isCreateAccount;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: isCreateAccount ? 0.r : 1.r,
          backgroundColor:
              isCreateAccount ? AppStyle.backGroundColor : AppStyle.primaryBlue,
          side: const BorderSide(color: AppStyle.splashBackGround)),
      onPressed: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          top: 15.r,
          bottom: 15.r,
        ),
        child: Text(
          text,
          style: isCreateAccount
              ? buttonTextStyle().copyWith(color: AppStyle.primaryBlue)
              : buttonTextStyle(),
        ),
      ),
    );
  }
}
