import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/setting/setting_controller.dart';
import 'package:historical_places/utils/app_const/app_const.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    context.initScreenSize;
    return Scaffold(
        backgroundColor: const Color(0xFFf2f2f7),
        appBar: AppBar(
          toolbarHeight: 65.h,
          backgroundColor: const Color(0xFF386bf6),
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 28.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0.w),
              height: 40.h,
              width: 375.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  color: Colors.white),
              child: ListTile(
                leading: const Icon(Icons.language),
                title: Text(
                  'Languages',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ],
        ));
  }
}
