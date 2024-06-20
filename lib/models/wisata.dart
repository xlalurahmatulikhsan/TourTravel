import 'package:get/get.dart';
import 'package:slicing/models/user.dart';

class Wisata {
  String wisataName;
  String image;
  double rating;
  String lokasi;
  String deskripsi;
  var quantity = 0.obs;

  Wisata(
    this.wisataName,
    this.image,
    this.rating,
    this.lokasi,
    this.deskripsi,
  );
}

class Paket {
  String paket;
  int price;
  var quantity = 0.obs;

  Paket(this.paket, this.price);
}

class Review {
  List<User> user;
  String word;
  double ratingView;
  DateTime tanggal;
  String saran;

  Review(this.user, this.word, this.ratingView, this.tanggal, this.saran);
}
