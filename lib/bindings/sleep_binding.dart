import 'package:get/get.dart';
import 'package:pdh_test_flutter/modules/sleep/controllers/sleep_controller.dart';

class SleepBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SleepController>(() => SleepController());
  }
}
