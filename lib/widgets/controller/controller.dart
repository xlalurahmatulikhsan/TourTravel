import 'package:get/get.dart';
import 'package:slicing/widgets/controller/item.dart';

class PackageController extends GetxController {
  var paketGiliTerawangan = <Item>[].obs;
  var totalA = 0.0.obs;
  var totalB = 0.0.obs;
  var destinasi = <Wisata>[].obs;

  @override
  void onInit() {
    super.onInit();
    paketGiliTerawangan.addAll([
      Item(
        'Paket Gili Terawangan \n3 Hari 2 Malam',
        3000000,
        Review(
          'bagus',
          4.8,
          'images/image_1.jpg',
          'Iksan',
          '''Lorem ipsum dolor sit amet,
adipiscing elit.''',
        ),
      ),
      Item(
        'Paket Gili Terawangan \n2 Hari 1 Malam',
        2000000,
        Review(
          'bagus',
          4.6,
          'images/image_1.jpg',
          'Adriyan',
          '''Lorem ipsum dolor sit amet,
adipiscing elit.''',
        ),
      ),
      Item(
        'Paket Gili Terawangan \n1 Hari',
        1000000,
        Review(
          'bagus',
          4.9,
          'images/image_1.jpg',
          'Ardika',
          '''Lorem ipsum dolor sit amet,
adipiscing elit.''',
        ),
      ),
    ]);

    destinasi.addAll([
      Wisata(
        'Gili Terawangan',
        'images/image_1.jpg',
        'Lombok Utara' 
        4.9,
        '''Paket Wisata Gili Trawangan adalah pilihan yang sempurna bagi anda yang ingin menikmati pengalaman liburan yang penuh keindahan dan aktivitas bahari menyenangkan.
Mulai dari menginap di Gili Trawangan dan merasakan suasananya yang hidup, hingga menjelajahi kekayaan bawah laut melalui snorkeling di perairan Gili Trawangan, Gili Air, dan Gili Meno.
Dapatkan pengalaman liburan yang tak terlupakan dan nikmati setiap momen secara total dan maksimal bersama MYGUIDE.''',
        'Bagus', 
      ),
      Wisata(
        'Gili Air',
        'images/image_1.jpg',
        'Lombok Utara',
        4.8,
        '''Paket Wisata Gili Trawangan adalah pilihan yang sempurna bagi anda yang ingin menikmati pengalaman liburan yang penuh keindahan dan aktivitas bahari menyenangkan.
Mulai dari menginap di Gili Trawangan dan merasakan suasananya yang hidup, hingga menjelajahi kekayaan bawah laut melalui snorkeling di perairan Gili Trawangan, Gili Air, dan Gili Meno.
Dapatkan pengalaman liburan yang tak terlupakan dan nikmati setiap momen secara total dan maksimal bersama MYGUIDE.''',
        'Bagus', 
      ),
      Wisata(
        'Gili Kondo',
        'images/image_1.jpg',
        'Lombok Utara',
        4.7,
        '''Paket Wisata Gili Trawangan adalah pilihan yang sempurna bagi anda yang ingin menikmati pengalaman liburan yang penuh keindahan dan aktivitas bahari menyenangkan.
Mulai dari menginap di Gili Trawangan dan merasakan suasananya yang hidup, hingga menjelajahi kekayaan bawah laut melalui snorkeling di perairan Gili Trawangan, Gili Air, dan Gili Meno.
Dapatkan pengalaman liburan yang tak terlupakan dan nikmati setiap momen secara total dan maksimal bersama MYGUIDE.''',
        'Bagus', 
      ),
    ]);

    ever(paketGiliTerawangan, (_) => calculateTotalA());
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

  void calculateTotalA() {
    totalA.value = paketGiliTerawangan.fold(
        0, (sum, item) => sum + (item.price * item.quantity.value));
  }
  // void totalRating() {
  //   totalA.value = paketGiliTerawangan.fold(
  //     0, (sub, item)=>sub + (item.interReview.rating/)
  //   )
  // }
}

class ButtonController extends GetxController {
  var selectedIndex = 0.obs;
  final Map<int, double> scrollPositions = {
    0: 300.0, //'Deskripsi'
    1: 100.0, //'Paket'
    2: 200.0 //'Review'
  };

  void selectButton(int index) {
    selectedIndex.value = index;
  }
}
