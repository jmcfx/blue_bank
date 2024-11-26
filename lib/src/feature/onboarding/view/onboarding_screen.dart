import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/app_launch/widgets/get_started_widgets.dart';
import 'package:blue_bank/src/feature/onboarding/model/onboarding_page_data_model.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/onboarding_last_page.dart';
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 4.h),
              padding: EdgeInsets.only(
                  left: 24.r, right: 24.r, bottom: 10.r, top: 18.r),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                      child: Image.asset(
                        "assets/images/back_arrow.png",
                        width: 24.r,
                        height: 24.r,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //
            SizedBox(
              height: 16.h,
            ),
            //pageView ......
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      // if (index == pagesDataList.length) {
                      //   return OnboardingLastPage(
                      //     data: pagesDataList[index - 1],
                      //   );
                      // }
                      // return OnboardingPage(data: pagesDataList[index]);
                     return OnboardingLastPage(data: pagesDataList[index]);
                    },
                  )
                ],
              ),
            ),
            // continue ....
            Padding(
              padding: EdgeInsets.only(left: 24.r, right: 24.r, bottom: 15.r),
              child: ButtonText(onTap: () {}, text: "Continue"),
            )
          ],
        ),
      ),
    );
  }
}
