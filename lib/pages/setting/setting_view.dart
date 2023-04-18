import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/setting/info_page/info_page.dart';
import 'package:historical_places/pages/setting/setting_controller.dart';
import 'package:historical_places/utils/app_const/app_const.dart';
import 'package:historical_places/utils/widgets/setting_card/setting_card.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    context.initScreenSize;
    return Scaffold(
        backgroundColor: const Color(0xFFf2f2f7),
        appBar: AppBar(
          flexibleSpace: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Container(
              height: double.infinity,
              width: 375.w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF3867d5),
                    Color(0xFF81c7f5),
                  ])),
            ),
          ),
          toolbarHeight: 65.h,
          backgroundColor: const Color(0xFF409cff),
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 30.h),
            GetBuilder<SettingController>(
                init: controller,
                builder: (_) {
                  return GestureDetector(
                    onTap: () {
                      controller.showBottomSheet(context);
                    },
                    child: SettingCard(
                      title: 'Languages',
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: const Color(0xFF386bf6),
                        size: 22.sp,
                      ),
                      iconsImage: 'assets/icons/language.png',
                    ),
                  );
                }),
            SizedBox(height: 10.h),
            SettingCard(
              title: 'Theme',
              iconsImage: 'assets/icons/sun.png',
              icon: CupertinoSwitch(value: true, onChanged: (value) {}),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Get.to(const InfoView());
              },
              child: SettingCard(
                title: 'Info',
                iconsImage: 'assets/icons/information.png',
                icon: Container(),
              ),
            ),
          ],
        ));
  }
}
