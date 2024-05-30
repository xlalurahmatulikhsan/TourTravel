import 'package:get/get.dart';
import 'package:slicing/Model/user.dart';
import 'package:slicing/Model/item.dart';
import 'package:slicing/Model/wisata.dart';

class PackageController extends GetxController {
  var paketGiliTerawangan = <Item>[].obs;
  var totalA = 0.0.obs;
  var destinasi = <Wisata>[].obs;
  var slider = <Banner>[].obs;
  var user = <User>[].obs;

  @override
  void onInit() {
    super.onInit();
    paketGiliTerawangan.addAll([
      Item(
        'Gili Terawangan 3 Hari 2 Malam',
        3000000,
        Review(
          'bagus',
          4.8,
          'images/image_1.jpg',
          '''Lorem ipsum dolor sit amet,
adipiscing elit.''',
        ),
      ),
      Item(
        'Gili Terawangan 2 Hari 1 Malam',
        2000000,
        Review(
          'bagus',
          4.6,
          'images/image_1.jpg',
          '''Lorem ipsum dolor sit amet,
adipiscing elit.''',
        ),
      ),
      Item(
        'Gili Terawangan 1 Hari',
        1000000,
        Review(
          'bagus',
          4.9,
          'images/image_1.jpg',
          '''Lorem ipsum dolor sit amet,
adipiscing elit.''',
        ),
      ),
    ]);

    destinasi.addAll([
      Wisata(
        'Gili Terawangan',
        'images/image_1.jpg',
        'Lombok Utara',
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

    slider.addAll([
      Banner(
        'https://i.pinimg.com/736x/a0/33/a6/a033a6d215cfdc41dbfd92c5ac5dc8cf.jpg',
      ),
      Banner(
        'https://i.pinimg.com/736x/a0/33/a6/a033a6d215cfdc41dbfd92c5ac5dc8cf.jpg',
      ),
      Banner(
        'https://i.pinimg.com/736x/a0/33/a6/a033a6d215cfdc41dbfd92c5ac5dc8cf.jpg',
      ),
    ]);

    user([
      User(
        'Iksan',
        '08675654267',
        'Iksan@gamil.com',
        '111222333',
      ),
      User(
        'Adriyan',
        '0867326143',
        'Adriyan@gamil.com',
        '222333444',
      ),
      User(
        'Ardika',
        '0862375428',
        'Ardika@gamil.com',
        '333444555',
      ),
    ]);

    // ever(paketGiliTerawangan, (_) => calculateTotalA());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    paketGiliTerawangan.clear();
    super.dispose();
  }

  void incrementQuantity(int index) {
    paketGiliTerawangan[index].quantity.value++;
    calculateTotalA();
  }

  void decrementQuantity(int index) {
    if (paketGiliTerawangan[index].quantity.value > 0) {
      paketGiliTerawangan[index].quantity.value--;
      calculateTotalA();
    }
  }

  void calculateTotalA() {
    totalA.value = paketGiliTerawangan.fold(
        0.0, (sum, item) => sum + (item.price * item.quantity.value));
  }
}

//  void inc(int index) {
//     count.value++;
//     calculateTotalA(index);
//   }

//   void dec(int index) {
//     if (count.value > 0) {
//       count.value--;
//       calculateTotalA(index);
//     }
//   }

//   void calculateTotalA(int index) {
//     totalA.value = count.value * index;
//   }
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
