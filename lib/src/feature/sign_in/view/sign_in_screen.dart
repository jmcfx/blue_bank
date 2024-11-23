import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/sign_in/widgets/sign_in_widget.dart';
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100.h,
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
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
