
import 'package:get/get.dart';
import 'package:historical_places/pages/main/main_controller.dart';

class MainaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}
