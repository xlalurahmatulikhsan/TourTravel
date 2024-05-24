import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/theme/theme.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return DraggableScrollableSheet(
                  initialChildSize: 0.5,
                  minChildSize: 0.3,
                  maxChildSize: 0.9,
                  builder: (context, scrollController) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Counter in Draggable Bottom Sheet: $_counter',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Text('Show Draggable Bottom Sheet'),
        ),
      ],
    );
  }
}

void showDetailPesanan(
  BuildContext context,
  String paket,
  String harga,
  String tanggal,
  // ignore: no_leading_underscores_for_local_identifiers
  int _counter,
  VoidCallback onIncrement,
  VoidCallback onDecrement,
) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.3,
        maxChildSize: 1,
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
                color: whiteColor1,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(12),
                    Center(
                      child: Container(
                        height: 6,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: primaryColor,
                        ),
                      ),
                    ),
                    Gap(34),
                    Text(
                      'Detail Pesanan',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                    ),
                    Gap(14),
                    Container(
                      height: 98,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: whiteColor1,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 4),
                            blurRadius: 6,
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(4, 0),
                            blurRadius: 6,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pilih Paket',
                              style: greyTextStyle.copyWith(
                                fontWeight: regular,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Paket Gili Terawangan $paket',
                              style: blackTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 12,
                              ),
                            ),
                            Gap(6),
                            Image.asset('images/crossLine.png'),
                            Gap(6),
                            Text(
                              'Gratis umur 3 tahun ke bawah \nDiscount 50% umur 4-9 tahun',
                              style: greenTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tanggal Kunjungan',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Cek Tanggal',
                            style: greenTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(8),
                    Center(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: greyColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          tanggal,
                          style: greyTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pilihan Paket',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    Gap(6),
                    Container(
                      width: double.infinity,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: whiteColor2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tour Saja (Tanpa Hotel)',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                            Gap(6),
                            Image.asset('images/crossLine.png'),
                            Gap(6),
                            Text(
                              'Mulai Dari $harga',
                              style: greyTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(14),
                    Text(
                      'Jumlah Paket',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                    Gap(8),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: greyColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'IDR ${int.parse(harga) * _counter}',
                                  style: redTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '/pax',
                                  style: greyTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Gap(106),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: onDecrement,
                                  icon: Image.asset('images/remove.png'),
                                  iconSize: 20,
                                ),
                                Text(
                                  '$_counter',
                                  style: greenTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 14,
                                  ),
                                ),
                                IconButton(
                                  onPressed: onIncrement,
                                  icon: Image.asset('images/add.png'),
                                  iconSize: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(68),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total (${_counter} pax)',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'IDR ${int.parse(harga) * _counter}',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        Gap(6),
                        Container(
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: primaryColor,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Pesan',
                              style: whiteTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var paketWisata = [
    {
      'nama': 'Gili Terawangan',
      'image': 'images/image_1.jpg',
      'rating': '4.9',
      'lokasi': 'Lombok Utara',
    },
    {
      'nama': 'Gili Air',
      'image': 'images/image_1.jpg',
      'rating': '4.9',
      'lokasi': 'Lombok Utara',
    },
    {
      'nama': 'Sembalun',
      'image': 'images/image_1.jpg',
      'rating': '4.9',
      'lokasi': 'Lombok Timur',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 254),
              child: Container(
                height: 680,
                color: whiteColor1,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        '#Nikmati Liburan Impianmu Sekarang Juga!',
                        style: whiteTextStyle2.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                      Gap(14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 290,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: whiteColor1,
                                filled: true,
                                constraints: BoxConstraints(maxHeight: 34),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                hintText: 'mau kemana',
                                hintStyle: greenTextStyle.copyWith(
                                  fontWeight: regular,
                                  fontSize: 12,
                                ),
                                prefixIcon: Image.asset('images/search.png'),
                              ),
                            ),
                          ),
                          Image.asset('images/circleEmail.png'),
                        ],
                      ),
                      Gap(14),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: CarouselSlider(
                        items: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://i.pinimg.com/736x/d8/77/1e/d8771ea436d8ade2301502171d61c272.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://i.pinimg.com/736x/a7/96/e3/a796e37aedf6d1153d820620eb135c7c.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://i.pinimg.com/736x/a0/33/a6/a033a6d215cfdc41dbfd92c5ac5dc8cf.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: false,
                          height: 260,
                          scrollDirection: Axis.horizontal,
                          initialPage: 0,
                          pageSnapping: true,
                        ),
                      ),
                    ),
                    Gap(14),
                    Image.asset('images/sliderExample.png')
                  ],
                ),
                Gap(20),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Paket Wisata Di Lombok',
                              style: greenTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(16),
                    SizedBox(
                      height: 196,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: paketWisata.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 20 : 10,
                              bottom:
                                  10, // Tambahkan jarak ke bawah untuk memperjelas bayangan
                            ),
                            child: GestureDetector(
                              onTap: () {
                                if (paketWisata[index]['nama'] ==
                                    'Gili Terawangan') {
                                  // Get.off(() => WisataPage());
                                } else {}
                              },
                              child: Container(
                                width: 212,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors
                                      .white, // Ubah warna latar belakang agar bayangan lebih jelas
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(0, 4),
                                      blurRadius: 6,
                                      spreadRadius: 0,
                                    ),
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(4, 0),
                                      blurRadius: 6,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 128,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            paketWisata[index]['image'] ?? '',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Gap(14),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                paketWisata[index]['nama'] ??
                                                    '',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: medium,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.star, size: 12),
                                                  Gap(6),
                                                  Text(
                                                    paketWisata[index]
                                                            ['rating'] ??
                                                        '',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                      fontWeight: medium,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.location_pin,
                                                  size: 12),
                                              Gap(6),
                                              Text(
                                                paketWisata[index]['lokasi'] ??
                                                    '',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: medium,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
