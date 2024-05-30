import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  late TextEditingController nomor;
  late TextEditingController pass;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nomor = TextEditingController();
    pass = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nomor.dispose();
    pass.dispose();
  }
}

class SignUpController extends GetxController {
  late TextEditingController nama;
  late TextEditingController nomor;
  late TextEditingController pass;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nama = TextEditingController();
    nomor = TextEditingController();
    pass = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nama.dispose();
    nomor.dispose();
    pass.dispose();
  }
}
