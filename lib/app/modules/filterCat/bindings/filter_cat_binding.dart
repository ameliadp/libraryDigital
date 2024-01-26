import 'package:get/get.dart';

import '../controllers/filter_cat_controller.dart';

class FilterCatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterCatController>(
      () => FilterCatController(),
    );
  }
}
