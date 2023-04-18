import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingCard extends StatelessWidget {
  final String? title;
  final Widget? icon;
  final String? iconsImage;
  const SettingCard(
      {super.key, this.icon, required this.iconsImage, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 375.w,
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0.r)),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 13.w),
                  child: Image.asset(iconsImage!)),
              SizedBox(width: 12.w),
              Expanded(
                  child: Text(
                title!,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              )),
              icon!,
              SizedBox(width: 10.w),
            ],
          )),
    );
  }
}
