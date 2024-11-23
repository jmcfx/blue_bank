import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3.h),
        child: Row(
          children: [
            Image.asset(
              "assets/images/logo2.png",
              width: 22.2.r,
              height: 30.r,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 9.w,
            ),
            Text(
              "Bluebank",
              style: TextStyle(
                fontFamily: "inter",
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppStyle.primaryBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Sign In Container.......
class SignInContainer extends StatelessWidget {
  const SignInContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      child: Text(
        "Sign in",
        style: TextStyle(
            color: AppStyle.primaryBlue,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}

//Payment Image........

class PaymentImage extends StatefulWidget {
  const PaymentImage({super.key});

  @override
  State<PaymentImage> createState() => _PaymentImageState();
}

class _PaymentImageState extends State<PaymentImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 321.r,
      height: 321.r,
      child: Image.asset("assets/images/payment.png"),
    );
  }
}

//title

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get \$50 when you\nopen an account",
            style: TextStyle(
              fontFamily: "inter",
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

//subTitle text

class SubTitleText extends StatelessWidget {
  const SubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enjoy the benefits of online banking by becoming\na customer. Let's Help you find the right account.",
            style: TextStyle(
              color: AppStyle.subtitleColor,
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,
            ),
          )
        ],
      ),
    );
  }
}

// Button ...

class ButtonText extends StatelessWidget {
  const ButtonText(
      {super.key, this.onTap, required this.text, });
  final VoidCallback? onTap;
  
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppStyle.primaryBlue)),
        onPressed: onTap,
        child: Padding(
          padding:   EdgeInsets.only(
            top: 20.r , bottom: 20.r , right: 101.r , left: 101.r,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
