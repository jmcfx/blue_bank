
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.text,
  });

  final Map<String, String> text;

  @override
  Widget build(BuildContext context) {
    String title = text['title'] ?? "";
    String subtitle = text['subtitle'] ?? "";
    return Padding(
      padding: EdgeInsets.only(top: 6.r, bottom: 8.r),
      child: ListTile(
        onTap: () {},
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
        trailing: Container(
          width: 25.r,
          height: 25.r,
          decoration: BoxDecoration(
            // color: AppStyle.primaryBlue,
            shape: BoxShape.circle,
            border: Border.all(
              width: 0.8.r,
              color: AppStyle.customTextFormFieldBorderColor,
            ),
          ),
          child: Icon(
            Icons.check,
            size: 14.r,
          ),
        ),
      ),
    );
  }
}


