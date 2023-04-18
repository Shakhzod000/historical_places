import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/main/main_controller.dart';

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
              return NavigationBar(
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  elevation: 10,
                  backgroundColor: Colors.white,
                  height: 70.h,
                  selectedIndex: controller.pageIndex!,
                  onDestinationSelected: (newIndex) =>
                      controller.onTabIndex(index: newIndex),
                  destinations: const [
                    NavigationDestination(
                        selectedIcon: Icon(
                          Icons.home,
                          color: Color(0xFF386bf6),
                        ),
                        icon: Icon(
                          Icons.home_outlined,
                          color: Color(0xFF386bf6),
                        ),
                        label: 'Home'),
                    NavigationDestination(
                        icon: Icon(
                          CupertinoIcons.search,
                          color: Color(0xFF386bf6),
                        ),
                        label: 'Search'),
                    NavigationDestination(
                        selectedIcon: Icon(
                          Icons.location_pin,
                          color: Color(0xFF386bf6),
                        ),
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF386bf6),
                        ),
                        label: 'Regions'),
                    NavigationDestination(
                        selectedIcon: Icon(
                          Icons.bookmark,
                          color: Color(0xFF386bf6),
                        ),
                        icon: Icon(
                          Icons.bookmark_outline,
                          color: Color(0xFF386bf6),
                        ),
                        label: 'Save'),
                    NavigationDestination(
                        selectedIcon: Icon(
                          Icons.settings,
                          color: Color(0xFF386bf6),
                        ),
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Color(0xFF386bf6),
                        ),
                        label: 'Setting'),
                  ]);
            }),
        body: GetBuilder<MainController>(
            init: controller,
            builder: (_) => controller.screens[controller.pageIndex!]));
  }
}
