//onboarding Last page

import 'package:blue_bank/src/feature/onboarding/model/account_model.dart';
import 'package:blue_bank/src/feature/onboarding/model/onboarding_page_data_model.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingLastPage extends StatefulWidget {
  const OnboardingLastPage({super.key, required this.data});

  final OnboardingPageDataModel data;
  @override
  State<OnboardingLastPage> createState() => _OnboardingLastPageState();
}

class _OnboardingLastPageState extends State<OnboardingLastPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 4.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(
                        color: AppStyle.customTextFormFieldBorderColor)),
                margin: EdgeInsets.symmetric(horizontal: 24.r, vertical: 16.r),
                padding: EdgeInsets.only(top: 26.r, left: 16.r, right: 16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Map the accountData to display AccountInfoCards dynamically.....
                    ...accountData.map((account) {
                      return AccountInfoCard(data: account);
                    }),
                    SizedBox(
                      height: 500.h,
                    )
                  ],
                ),
              ),
              Positioned(
                right: 32.r,
                child: Chip(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.r, vertical: 8.r),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50).r,
                  ),
                  side: const BorderSide(color: AppStyle.bundleAccounts),
                  backgroundColor: AppStyle.bundleAccounts,
                  label: Text(
                    "Bundled accounts",
                    style:
                        TextStyle(color: AppStyle.primaryBlue, fontSize: 14.sp),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class AccountInfoCard extends StatelessWidget {
  const AccountInfoCard({
    super.key,
    required this.data,
  });

  final AccountModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          data.title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.h), //  spacing between title and subtitle
        Text(
          data.subtitle,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          color: AppStyle.bundleAccounts,
          child: Row(
            children: [
              Container(
                width: 5.r,
                height: 6.r,
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
              ),
          
               
            ],
          ),
        )
      ],
    );
  }
}
