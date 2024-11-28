import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/sign_in/widgets/forgot_password_text_style.dart';
import 'package:blue_bank/src/feature/sign_in/widgets/header_logo.dart';
import 'package:blue_bank/src/feature/sign_in/widgets/custom_text_form_field.dart';
import 'package:blue_bank/src/route.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:blue_bank/src/utils/custom_button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.backGroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.5.w, ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 89.h,
                ),
                const HeaderLogo(),
                SizedBox(height: 76.h),
                Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 24.h),
                const CustomTextFormField(
                  name: "Customer ID",
                  hintText: "Enter ID",
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomTextFormField(
                  name: "Password",
                  hintText: "Enter Password",
                  obscureText: true,
                  suffixIcon: Padding(
                    padding:
                        EdgeInsets.only(right: 16.r, top: 12.r, bottom: 12.r),
                    child: const Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const ForgotPasswordTextStyle(),
                SizedBox(
                  height: 28.h,
                ),
                //sign in .....
                CustomButtonStyle(
                  onTap: () {
                    //push to onBoarding....
                    context.router.push(const OnboardingRoute());
                  },
                  text: "Sign in",
                ),
                SizedBox(
                  height: 140.h,
                ),
                //create account .....
                CustomButtonStyle(
                  onTap: () {},
                  text: "Create account",
                  isCreateAccount: true,
                ),
                SizedBox(
                  height: 5.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
