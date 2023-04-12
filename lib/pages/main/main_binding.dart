import 'package:get/get.dart';
import 'package:historical_places/pages/home/home_controller.dart';
import 'package:historical_places/pages/main/main_controller.dart';
import 'package:historical_places/pages/regions/regions_controller.dart';
import 'package:historical_places/pages/save/save_controller.dart';
import 'package:historical_places/pages/search/search_controller.dart';
import 'package:historical_places/pages/setting/setting_controller.dart';

class MainaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<RegionsController>(() => RegionsController());
    Get.lazyPut<SaveController>(() => SaveController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
