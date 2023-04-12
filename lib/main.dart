import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/main/main_binding.dart';
import 'package:historical_places/utils/app_const/app_const.dart';
import 'package:historical_places/utils/app_pages/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return GetMaterialApp(
            themeMode: ThemeMode.light,
            title: 'Historical places',
            debugShowCheckedModeBanner: false,
            getPages: AppRoutes.appPages,
            initialBinding: MainaBinding(),
            initialRoute: AppPageRoutesName.mainView.route,
          );
        });
  }
}
