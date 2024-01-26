import 'package:get/get.dart';

class FilterCatController extends GetxController {
  var selectedValue = ''.obs;
  void setSelectedValue(String value) {
    selectedValue.value = value;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
