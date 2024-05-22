import 'package:get/get.dart';

class Item {
  String paketan;
  double price;
  var quantity = 0.obs; // .obs membuat variabel ini menjadi observable

  Item(this.paketan, this.price);
}

class PackageController extends GetxController {
  var paketGiliTerawangan = <Item>[].obs;
  var packagesB = <Item>[].obs;
  var totalA = 0.0.obs;
  var totalB = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    paketGiliTerawangan.addAll([
      Item('3 Hari 2 Malam', 10.0),
      Item('2 Hari 1 Malam', 15.0),
    ]);

    packagesB.addAll([
      Item('1 Hari', 20.0),
      Item('Setengah Hari', 5.0),
    ]);

    ever(paketGiliTerawangan, (_) => calculateTotalA());
    ever(packagesB, (_) => calculateTotalB());
  }

  void incrementQuantityA(Item item) {
    item.quantity++;
    calculateTotalA();
  }

  void decrementQuantityA(Item item) {
    if (item.quantity > 0) {
      item.quantity--;
      calculateTotalA();
    }
  }

  void incrementQuantityB(Item item) {
    item.quantity++;
    calculateTotalB();
  }

  void decrementQuantityB(Item item) {
    if (item.quantity > 0) {
      item.quantity--;
      calculateTotalB();
    }
  }

  void calculateTotalA() {
    totalA.value = paketGiliTerawangan.fold(
        0.0, (sum, item) => sum + (item.price * item.quantity.value));
  }

  void calculateTotalB() {
    totalB.value = packagesB.fold(
        0.0, (sum, item) => sum + (item.price * item.quantity.value));
  }
}
