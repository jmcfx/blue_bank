import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:blue_bank/src/utils/app_style.dart';
import 'package:blue_bank/src/utils/button_textstyle.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.name,
      this.obscureText = false,
      this.suffixIcon});

  final String hintText, name;

  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 6.h,
          ),
          TextFormField(
            obscureText: obscureText,
            autocorrect: false,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 16.r, top: 12.r, bottom: 12.r),
              hintText: hintText,
              suffixIcon: suffixIcon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(
                  color: AppStyle.customTextFormFieldBorderColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: const BorderSide(
                  color: AppStyle.primaryBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
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

// forgot password Style ....

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

//custom Button Style ....

class CustomButtonStyle extends StatelessWidget {
  const CustomButtonStyle(
      {super.key, required this.text, this.isCreateAccount = false,  required this.onTap});
  final String text;
  final bool isCreateAccount;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
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
      ),
    );
  }
}
