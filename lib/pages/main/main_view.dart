import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/home/home_view.dart';
import 'package:historical_places/pages/main/main_controller.dart';
import 'package:historical_places/pages/regions/regions_view.dart';
import 'package:historical_places/pages/save/save_view.dart';
import 'package:historical_places/pages/search/search_view.dart';
import 'package:historical_places/pages/setting/setting_view.dart';
import 'package:historical_places/utils/app_const/app_const.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    context.initScreenSize;
    return Scaffold(
        backgroundColor: const Color(0xFFf2f2f7),
        bottomNavigationBar: GetBuilder<MainController>(
            init: controller,
            builder: (_) {
              return CurvedNavigationBar(
                  onTap: (newValue) {
                    controller.pageController!.animateToPage(newValue,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn);
                  },
                  height: 70.h,
                  buttonBackgroundColor: const Color(0xFF386bf6),
                  backgroundColor: Colors.transparent,
                  animationDuration: const Duration(milliseconds: 400),
                  color: const Color(0xff386bf6),
                  items: const [
                    Icon(Icons.home_filled, color: Colors.white),
                    Icon(CupertinoIcons.search, color: Colors.white),
                    Icon(Icons.location_pin, color: Colors.white),
                    Icon(Icons.bookmark, color: Colors.white),
                    Icon(Icons.settings, color: Colors.white)
                  ]);
            }),
        body: GetBuilder<MainController>(
            init: controller,
            builder: (_) {
              return PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.onTabIndex(value);
                },
                children: const [
                  HomeView(),
                  SearchView(),
                  RegionView(),
                  SaveView(),
                  SettingView()
                ],
              );
            }));
  }
}
