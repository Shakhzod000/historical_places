import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/home/home_view.dart';
import 'package:historical_places/pages/regions/regions_view.dart';
import 'package:historical_places/pages/save/save_view.dart';
import 'package:historical_places/pages/search/search_view.dart';
import 'package:historical_places/pages/setting/setting_view.dart';

class MainController extends GetxController {
   int _pageIndex = 0;
 final List<Widget> screens = [
      const HomeView(),
      const SearchView(),
      const RegionView(),
      const SaveView(),
      const SettingView()
    ];

  onTabIndex({required int index}) {
    _pageIndex = index;
    update();
  }

  int? get pageIndex => _pageIndex;
}
