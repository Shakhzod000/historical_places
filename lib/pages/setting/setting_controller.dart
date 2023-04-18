import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/utils/widgets/setting_card/theme_card/theme_card.dart';

class SettingController extends GetxController {
  showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (contex) {
          return Container(
            height: 245.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8.r),
                ),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Container(
                  height: 3.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: const Color(0xFF386bf6)),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Select language',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10.h),
                const ThemeCard(title: 'English', flag: 'assets/icons/sun.png'),
                const ThemeCard(
                    title: 'Russsian', flag: 'assets/icons/sun.png'),
                const ThemeCard(title: 'Uzbek', flag: 'assets/icons/sun.png')
              ],
            ),
          );
        });
  }
}
