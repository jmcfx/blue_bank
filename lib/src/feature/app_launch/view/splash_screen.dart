import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/route.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.router.push(const GetStartedRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.splashBackGround,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/logo.png",
                width: 74.02.r,
                height: 100.r,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 15.h,
              ),
              child: Text(
                "Bluebank",
                style: TextStyle(
                  fontFamily: "inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
