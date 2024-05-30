import 'package:get/get.dart';
import 'package:slicing/Model/wisata.dart';

class Item {
  String paket;
  int price;
  Review review;
  RxInt quantity;

  Item(
    this.paket,
    this.price,
    this.review,
  ) : quantity = 0.obs;
}

class Banner {
  String image;

  Banner(this.image);
}
