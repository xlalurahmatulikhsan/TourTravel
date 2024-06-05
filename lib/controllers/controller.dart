import 'package:get/get.dart';
import 'package:slicing/models/banner.dart';
import 'package:slicing/models/user.dart';
import 'package:slicing/models/wisata.dart'; // Import Wisata and Paket classes

class PackageController extends GetxController {
  var paketWisata = <Wisata>[].obs; // List observabel dari kelas Wisata
  var totalA = 0.0.obs;
  var slider = <Banner>[].obs;
  var reviewer = <Review>[].obs;
  var user = <User>[].obs;
  var paketGiliTerawangan = <Paket>[].obs;
  var paketGiliAir = <Paket>[].obs;
  var paketGiliMeno = <Paket>[].obs;

  @override
  void onInit() {
    super.onInit();

    // Tambahkan item-slider ke dalam list slider
    slider.addAll([
      Banner('images/image_1.jpg'),
      Banner('images/image_2.jpg'),
      Banner('images/image_3.jpg'),
    ]);

    // Definisikan paket untuk setiap Wisata
    paketGiliTerawangan.addAll([
      Paket('Gili Terawangan 3 Hari 2 Malam', 3200000),
      Paket('Gili Terawangan 2 Hari 1 Malam', 2000000),
      Paket('Gili Terawangan 1 Hari', 1000000),
    ]);
    paketGiliAir.addAll([
      Paket('Gili Air 3 Hari 2 Malam', 2500000),
      Paket('Gili Air 2 Hari 1 Malam', 1500000),
      Paket('Gili Air 1 Hari', 800000),
    ]);
    paketGiliMeno.addAll([
      Paket('Gili Meno 3 Hari 2 Malam', 2400000),
      Paket('Gili Meno 2 Hari 1 Malam', 1500000),
      Paket('Gili Meno 1 Hari', 700000),
    ]);

    // Tambahkan data-data wisata ke dalam list paketWisata
    paketWisata.addAll([
      Wisata(
        'Gili Terawangan',
        'images/image_1.jpg',
        4.7,
        'Lombok Utara',
        '''Paket Wisata Gili Trawangan adalah pilihan yang sempurna bagi anda yang ingin menikmati pengalaman liburan yang penuh keindahan dan aktivitas bahari menyenangkan.
Mulai dari menginap di Gili Trawangan dan merasakan suasananya yang hidup, hingga menjelajahi kekayaan bawah laut melalui snorkeling di perairan Gili Trawangan, Gili Air, dan Gili Meno.
Dapatkan pengalaman liburan yang tak terlupakan dan nikmati setiap momen secara total dan maksimal bersama MYGUIDE.''',
      ),
      Wisata(
        'Gili Air',
        'images/image_2.jpg',
        4.8,
        'Lombok Utara',
        'description',
      ),
      Wisata(
        'Gili Meno',
        'images/image_3.jpg',
        4.3,
        'Sumbawa',
        'description',
      ),
    ]);

    reviewer.addAll([
      Review(
        [
          User(
            'adriyan',
            '08743768457',
            'adriyan@gamil.com',
            '112233',
          ),
        ],
        'bagus',
        4.5,
        DateTime(2023, 10, 13),
        'Kelas Abangku',
      ),
      Review(
        [
          User(
            'Iksan',
            '08743768457',
            'Iksan@gamil.com',
            '112233',
          ),
        ],
        'bagus',
        4.5,
        DateTime(2023, 10, 13),
        'Kelas Abangku',
      ),
      Review(
        [
          User(
            'ardika',
            '08743768457',
            'ardika@gamil.com',
            '112233',
          ),
        ],
        'bagus',
        4.5,
        DateTime(2023, 10, 13),
        'Kelas Abangku',
      )
    ]);

    user.addAll([
      User(
        'ardika',
        '08743768457',
        'ardika@gamil.com',
        '112233',
      ),
      User(
        'Iksan',
        '08743768457',
        'Iksan@gamil.com',
        '112233',
      ),
      User(
        'adriyan',
        '08743768457',
        'adriyan@gamil.com',
        '112233',
      ),
    ]);
  }

  @override
  void dispose() {
    paketWisata.clear();
    super.dispose();
  }

  // void incrementQuantity(int wisataIndex, int Index) {
  //   paketWisata[wisataIndex].quantity.value++;
  //   calculateTotalA();
  // }

  // void decrementQuantity(int wisataIndex, int Index) {
  //   if (paketWisata[wisataIndex].quantity.value > 0) {
  //     paketWisata[wisataIndex].quantity.value--;
  //     calculateTotalA();
  //   }
  // }

  // void calculateTotalA() {
  //   totalA.value = 0.0;
  //   for (var wisata in paketWisata) {
  //     if (wisata.wisataName == 'Gili Terawangan') {
  //       totalA.value += paketGiliTerawangan.fold(
  //           0.0, (sum, paket) => sum + (paket.price * paket.quantity.value));
  //     } else if (wisata.wisataName == 'Gili Air') {
  //       totalA.value += paketGiliAir.fold(
  //           0.0, (sum, paket) => sum + (paket.price * paket.quantity.value));
  //     } else if (wisata.wisataName == 'Gili Meno') {
  //       totalA.value += paketGiliMeno.fold(
  //           0.0, (sum, paket) => sum + (paket.price * paket.quantity.value));
  //     }
  //   }
  // }

  // void selectPaket(int wisataIndex, int Index) {
  //   if (paketWisata[wisataIndex].wisataName == 'Gili Terawangan') {
  //     paketGiliTerawangan[wisataIndex].quantity.value++;
  //   } else if (paketWisata[wisataIndex].wisataName == 'Gili Air') {
  //     paketGiliAir[wisataIndex].quantity.value++;
  //   } else if (paketWisata[wisataIndex].wisataName == 'Gili Meno') {
  //     paketGiliMeno[wisataIndex].quantity.value++;
  //   }
  //   calculateTotalA();
  // }
  void incrementQuantity(int Index) {
    if (Index >= 0 && Index < paketGiliTerawangan.length) {
      paketGiliTerawangan[Index].quantity.value++;
      calculateTotalA();
    }
  }

  void decrementQuantity(int Index) {
    if (Index >= 0 && Index < paketGiliTerawangan.length) {
      if (paketGiliTerawangan[Index].quantity.value > 0) {
        paketGiliTerawangan[Index].quantity.value--;
        calculateTotalA();
      }
    }
  }

  void calculateTotalA() {
    totalA.value = paketGiliTerawangan.fold(0.0, (sum, paket) {
      return sum + (paket.price * paket.quantity.value);
    });
  }

  void selectPaket(int Index) {
    if (Index >= 0 && Index < paketGiliTerawangan.length) {
      paketGiliTerawangan[Index].quantity.value++;
      calculateTotalA();
    }
  }
}

class ButtonController extends GetxController {
  var selectedIndex = 0.obs;
  final Map<int, double> scrollPositions = {
    0: 20.0, //'Deskripsi'
    1: 160.0, //'Paket'
    2: 270.0 //'Review'
  };

  void selectButton(int index) {
    selectedIndex.value = index;
  }
}
