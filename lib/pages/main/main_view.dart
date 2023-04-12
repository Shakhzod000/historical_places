import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/main/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 45.h),
          child: FloatingActionButton(
            elevation: .0,
            onPressed: () {},
            child: Image.asset('assets/icons/world_icon.png'),
          ),
        ),
        body: GetBuilder<MainController>(
            init: controller,
            builder: (_) {
              return CupertinoTabScaffold(
                  controller: controller.tabController,
                  backgroundColor: Colors.white,
                  resizeToAvoidBottomInset: false,
                  tabBar: CupertinoTabBar(
                      height: 70.h,
                      onTap: (newIndex) => controller.onTabIndex,
                      items: [
                        BottomNavigationBarItem(
                            icon: Image.asset('assets/icons/home_icon.png'),
                            activeIcon:
                                Image.asset('assets/icons/home_fill.png')),
                        BottomNavigationBarItem(
                            icon: Image.asset('assets/icons/search_icon.png'),
                            activeIcon:
                                Image.asset('assets/icons/search_fill.png')),
                        BottomNavigationBarItem(
                            icon: Image.asset('assets/icons/bookmark_icon.png'),
                            activeIcon:
                                Image.asset('assets/icons/bookmark_fill.png')),
                        const BottomNavigationBarItem(
                            icon: Icon(Icons.settings_outlined),
                            activeIcon: Icon(Icons.settings)),
                      ]),
                  tabBuilder: (context, index) => CupertinoTabView(
                        builder: (context) => controller.pages[index],
                      ));
            }));
  }
}
