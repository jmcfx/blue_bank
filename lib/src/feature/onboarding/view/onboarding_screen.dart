import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/app_launch/widgets/get_started_widgets.dart';
import 'package:blue_bank/src/feature/onboarding/model/onboarding_page_data_model.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/onboarding_last_page.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/onboarding_page.dart';
import 'package:blue_bank/src/route.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  int currentStep = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void _onPageChanged(int index) {
   
    setState(() {
      currentStep = index;
    });
  }

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
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Expanded(
                    child: StepProgressIndicator(
                      unselectedColor: AppStyle.unSelectedColor,
                      selectedColor: AppStyle.primaryBlue,
                      currentStep: currentStep + 1,
                      totalSteps: 5,
                      roundedEdges: Radius.circular(4.r),
                      padding: 7.r,
                      customStep: (index, color, _) {
                        return Container(
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
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
                    onPageChanged: _onPageChanged,
                    controller: _pageController,
                    itemCount: pagesDataList.length + 1,
                    itemBuilder: (context, index) {
                      if (index == pagesDataList.length) {
                        return const OnboardingLastPage();
                      }
                      return OnboardingPage(data: pagesDataList[index]);
                    },
                  )
                ],
              ),
            ),
            // continue ....
            Padding(
              padding: EdgeInsets.only(left: 24.r, right: 24.r, bottom: 15.r),
              child: ButtonText(
                onTap: () {
                  // Increment current step
                  if (currentStep < pagesDataList.length) {
                    setState(() {
                      currentStep++;
                    });
                    // Animate to the next page
                    _pageController.animateToPage(
                      currentStep,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  } else {
                    //push to Open Account route.....
                    context.router.push(const OpenAccountRoute());
                  }
                },
                text: currentStep == pagesDataList.length
                    ? "Open Account"
                    : "Continue",
              ),
            )
          ],
        ),
      ),
    );
  }
}
