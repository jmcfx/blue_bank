import 'package:blue_bank/src/feature/onboarding/model/account_model.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/bullet_point.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            fontSize: 14.sp,
            color: AppStyle.subtitleColor,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        //
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03.r),
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: const Offset(1, 2),
                )
              ],
              color: AppStyle.bundleAccounts,
              borderRadius: BorderRadius.circular(5.r)),
          padding:
              EdgeInsets.only(left: 12.r, top: 16.r, bottom: 16.r, right: 8.r),
          child: Column(
            children: [
              //Account info card ...
              ...data.features.map((feature) {
                return Padding(
                  padding: const EdgeInsets.all(1.0).r,
                  child: Row(
                    children: [
                      //  bullet Point ..
                      bulletPoint(),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        feature,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                );
              })
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          data.tag!,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8.h,
        ),

        //What you will get
        ...data.extraInfo.map(
          (extraInfo) {
            return Padding(
              padding: EdgeInsets.only(left: 8.r, bottom: 5.r),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      bulletPoint(isTrue: true),
                      SizedBox(
                        width: 9.w,
                      ),
                      Text(
                        extraInfo.text,
                        style: const TextStyle(color: AppStyle.subtitleColor),
                      )
                    ],
                  ),
                  if (extraInfo.hasDivider)
                    Column(
                      children: [
                        SizedBox(
                          height: 24.h,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Divider(
                              thickness: 1.1.r,
                              color: AppStyle.customTextFormFieldBorderColor,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 24.r,
                              height: 24.r,
                              decoration: BoxDecoration(
                                color: AppStyle.primaryBlue,
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: AppStyle.backGroundColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                ],
              ),
            );
          },
        ),
        SizedBox(
          height: 24.h,
        )
      ],
    );
  }
}
