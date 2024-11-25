// Radio Style ........
import 'package:blue_bank/src/feature/app_launch/widgets/get_started_widgets.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//
class CustomListTile extends StatefulWidget {
  const CustomListTile({
    super.key,
    required this.text,
  });

  final Map<String, String> text;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    String title = widget.text['title'] ?? "";
    String subtitle = widget.text['subtitle'] ?? "";
    return Padding(
      padding: EdgeInsets.only(top: 6.h, bottom: 8.h),
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

// Header Column .......
class HeaderColumn extends StatelessWidget {
  const HeaderColumn({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          subTitle,
          style: subTitleTextStyle(),
        )
      ],
    );
  }
}
