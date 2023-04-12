import 'package:get/get.dart';
import 'package:historical_places/pages/save/save_controller.dart';

class SaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaveController>(() => SaveController());
  }
}
