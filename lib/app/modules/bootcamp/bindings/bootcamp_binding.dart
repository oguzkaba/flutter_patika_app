import 'package:get/get.dart';

import '../controllers/bootcamp_controller.dart';

class BootcampBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BootcampController>(
      () => BootcampController(),
    );
  }
}
