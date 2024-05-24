import 'package:get/get.dart';

class Item {
  String paketan;
  int price;
  Review interReview;
  var quantity = 0.obs; // .obs membuat variabel ini menjadi observable

  Item(this.paketan,this.price,this.interReview,);
}

class Wisata {
  String namaTempat;
  String image;
  String lokasi;
  Review eksterReview;
  String deskripsi;
  

  
  Wisata(this.namaTempat,this.image,this.lokasi,this.eksterReview,this.deskripsi,);
}

class Review{
  String masukan;
  double rating;
  String image;
  String namaOrang;
  String saran;

  Review(this.masukan,this.rating,this.image,this.namaOrang,this.saran,);
}
