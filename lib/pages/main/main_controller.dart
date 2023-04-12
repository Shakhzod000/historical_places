import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final int _pageIndex = 0;
  final PageController? _pageController = PageController();

  void onTabIndex(int index) {
    pageIndex == index;
    update();
  }

  int? get pageIndex => _pageIndex;
  PageController? get pageController => _pageController;
}
