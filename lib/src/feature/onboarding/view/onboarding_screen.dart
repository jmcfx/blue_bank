import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/box_style.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            //pageView ......
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            //first column.....
                            const HeaderColumn(
                              title: "Choose a bank account",
                              subTitle:
                                  "Tell us what you're looking for in a bank account. ",
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            //second column.....
                            Text(
                              "i'm looking for a ",
                              style: TextStyle(
                                color: AppStyle.secondText,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const RadioStyle(
                              text: "Single account",
                            ),
                            const RadioStyle(
                              text: "Joint account",
                            ),
                          ],
                        ),
                      ),
                      Container()
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


