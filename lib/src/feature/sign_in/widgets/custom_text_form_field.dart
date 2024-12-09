import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:blue_bank/src/utils/app_style.dart';

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
