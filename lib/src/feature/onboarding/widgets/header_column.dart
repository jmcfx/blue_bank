import 'package:blue_bank/src/feature/app_launch/widgets/get_started_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
