import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/header_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OpenAccountScreen extends StatefulWidget {
  const OpenAccountScreen({super.key});

  @override
  State<OpenAccountScreen> createState() => _OpenAccountScreenState();
}

class _OpenAccountScreenState extends State<OpenAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Image.asset(
                    "assets/images/back_arrow.png",
                    width: 24.r,
                    height: 24.r,
                  ),
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              const HeaderColumn(
                title: "Your Details",
                subTitle: "Let's start with your details.",
              )
            ],
          ),
        ),
      ),
    );
  }
}
