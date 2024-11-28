import 'package:blue_bank/src/feature/onboarding/model/account_model.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/account_info_card.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/header_column.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:blue_bank/src/utils/custom_button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//onboarding Last page
class OnboardingLastPage extends StatefulWidget {
  const OnboardingLastPage({
    super.key,
  });

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
          Container(
            padding: EdgeInsets.only(left: 24.r, right: 24.r),
            child: const HeaderColumn(
              title: "Recommend accounts ",
              subTitle: "This is based on the information you provided.",
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(
                        width: 1.r,
                        color: AppStyle.customTextFormFieldBorderColor)),
                margin: EdgeInsets.symmetric(horizontal: 24.r, vertical: 20.r),
                padding: EdgeInsets.only(top: 26.r, left: 16.r, right: 16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Map the accountData to display AccountInfoCards dynamically.....
                    ...accountData.map((account) {
                      return AccountInfoCard(data: account);
                    }),
                    //learn more....
                    CustomButtonStyle(
                      isCreateAccount: true,
                      text: "Learn more",
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 24.h,
                    )
                  ],
                ),
              ),
              Positioned(
                right: 32.r,
                top: 0.r,
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
