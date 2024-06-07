import 'package:get/get.dart';

class RadioController extends GetxController {
  var selectedValue = 0.obs;

  void setSelectedValue(int value) {
    selectedValue.value = value;
  }
}
