import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegionsCard extends StatelessWidget {
  const RegionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.0.w, right: 8.0.w, bottom: 11.h),
      height: 40.h,
      width: 375.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 8.0.w),
        child: Text(
          'Toshkent viloyati',
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
