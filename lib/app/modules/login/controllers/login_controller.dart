import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController userC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController nameC = TextEditingController();
  TextEditingController alamatC = TextEditingController();

  RxBool isPasswordHidden = true.obs;

  void tooglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  final _isRegis = false.obs;
  bool get isRegis => _isRegis.value;
  set isRegis(value) => _isRegis.value = value;

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
