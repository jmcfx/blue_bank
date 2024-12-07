import 'package:blue_bank/src/feature/onboarding/model/onboarding_page_data_model.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/custom_list_tile.dart';
import 'package:blue_bank/src/feature/onboarding/widgets/header_column.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// onboarding Page.....
class OnboardingPage extends HookWidget {
  const OnboardingPage({
    super.key,
    required this.data,
  });

  final OnboardingPageDataModel data;
  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int?>(null);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //first column.....
          HeaderColumn(
              title: data.title, // data.title
              subTitle: data.subTitle // data.subtitle
              ),
          SizedBox(
            height: 24.h,
          ),
          //second column.....
          Text(
            data.question,
            style: TextStyle(
              color: AppStyle.secondText,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          // map
          ...data.options.asMap().entries.map(
            (entry) {
              final index = entry.key;
              final option = entry.value;
              return CustomListTile(
                text: option,
                isSelected: selectedIndex.value == index,
                onTap: () {
                  selectedIndex.value = index;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
