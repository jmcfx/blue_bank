import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/app_launch/widgets/get_started_widgets.dart';
import 'package:blue_bank/src/route.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.backGroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.5.r, vertical: 4.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                children: [
                  //logo ...
                  LogoContainer(),
                  //sign In ....
                  SignInContainer(),
                ],
              ),
              SizedBox(
                height: 48.h,
              ),
              const PaymentImage(),
              const TitleText(),
              const SubTitleText(),
              const Spacer(),
              ButtonText(
                text: "Get started",
                onTap: () {
                  //
                  context.router.push(const SignInRoute());
                },
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
