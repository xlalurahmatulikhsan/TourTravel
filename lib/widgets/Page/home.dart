import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widgets/Page/package/Gili/paket_gili.dart';

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
                                  Get.off(() => WisataPage());
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
