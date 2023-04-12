import 'package:get/get.dart';
import 'package:historical_places/pages/search/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
