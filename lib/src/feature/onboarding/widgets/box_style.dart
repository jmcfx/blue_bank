// Radio Style ........
import 'package:blue_bank/src/feature/app_launch/widgets/get_started_widgets.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioStyle extends StatefulWidget {
  const RadioStyle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<RadioStyle> createState() => _RadioStyleState();
}

class _RadioStyleState extends State<RadioStyle> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6.h, bottom: 8.h),
      child: ListTile(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side:
              const BorderSide(color: AppStyle.customTextFormFieldBorderColor),
        ),
        title: Text(
          widget.text,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        // trailing: Container(
        //   decoration:  const BoxDecoration(
        //     shape: BoxShape.circle
        //   ),
        // ),
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
