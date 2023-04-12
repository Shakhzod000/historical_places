import 'package:get/get.dart';
import 'package:historical_places/pages/regions/regions_controller.dart';

class RegionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegionsController>(() => RegionsController());
  }
}
