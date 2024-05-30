import 'package:get/get.dart';

class Item {
  String paket;
  int price;
  Review review;
  RxInt quantity;

  Item(this.paket, this.price, this.review) : quantity = 0.obs;
}

class Wisata {
  String namaTempat;
  String image;
  String lokasi;
  double averageRating;
  String deskripsi;
  String ekspresi;

  Wisata(
    this.namaTempat,
    this.image,
    this.lokasi,
    this.averageRating,
    this.deskripsi,
    this.ekspresi,
  );
}

class Review {
  String masukan;
  double rating;
  String image;
  String saran;

  Review(
    this.masukan,
    this.rating,
    this.image,
    this.saran,
  );
}

class Banner {
  String image;

  Banner(this.image);
}

class User {
  String namaOrang;
  String nomorTelepon;
  String email;
  String password;

  User(this.namaOrang, this.nomorTelepon, this.email, this.password);
}
