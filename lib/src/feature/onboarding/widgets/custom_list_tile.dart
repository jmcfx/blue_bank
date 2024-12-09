
import 'package:blue_bank/src/feature/onboarding/view_models/onboarding_bloc.dart';
import 'package:blue_bank/src/feature/onboarding/view_models/onboarding_states.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.text, required this.isSelected, required this.onTap,
  });

  final Map<String, String> text;
    final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    String title = text['title'] ?? "";
    String subtitle = text['subtitle'] ?? "";
    return Padding(
      padding: EdgeInsets.only(top: 6.r, bottom: 8.r),
      child: ListTile(
        onTap: onTap,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(4).r,
          side: BorderSide(
            color: AppStyle.customTextFormFieldBorderColor,
            width: 0.7.r,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        subtitle: subtitle.isEmpty ? null : Text(subtitle )  ,
        trailing: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {

            return Container(
              width: 25.r,
              height: 25.r,
              decoration: BoxDecoration(
                 color: isSelected ? AppStyle.primaryBlue : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 0.8.r,
                  color: AppStyle.customTextFormFieldBorderColor,
                ),
              ),
              child: Icon(
                Icons.check,
                size: 14.r,
                color:  isSelected ? Colors.white : Colors.transparent,
              ),
            );
          }
        ),
      ),
    );
  }
}