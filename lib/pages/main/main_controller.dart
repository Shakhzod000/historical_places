import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/home/home_view.dart';
import 'package:historical_places/pages/save/save_view.dart';
import 'package:historical_places/pages/search/search_view.dart';
import 'package:historical_places/pages/setting/setting_view.dart';

class MainController extends GetxController {
  final CupertinoTabController? tabController = CupertinoTabController();
  final int _pageIndex = 0;
  final List<Widget> pages = [
    const HomeView(),
    const SearchView(),
    const SaveView(),
    const SettingView()
  ];

  onTabIndex(int index) {
    _pageIndex == index;
    update();
  }

  int get pageIndex => -pageIndex;
}
