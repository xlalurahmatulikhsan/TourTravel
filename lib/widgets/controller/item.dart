import 'package:get/get.dart';

class Item {
  String paketan;
  int price;
  Review review;
  var quantity = 0.obs; // .obs membuat variabel ini menjadi observable

  Item(
    this.paketan,
    this.price,
    this.review,
  );
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
  String namaOrang;
  String saran;

  Review(
    this.masukan,
    this.rating,
    this.image,
    this.namaOrang,
    this.saran,
  );
}
