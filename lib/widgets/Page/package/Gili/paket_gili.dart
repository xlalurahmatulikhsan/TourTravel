import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widgets/Page/home.dart';
import 'package:slicing/widgets/Page/package/Gili/detail.dart';

class PaketGili_1 extends StatefulWidget {
  const PaketGili_1({super.key});

  @override
  State<PaketGili_1> createState() => _PaketGili_1State();
}

class _PaketGili_1State extends State<PaketGili_1>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  var paketGili = [
    {
      'waktu': '3 Hari 2 Malam',
      'harga': 'IDR 3.320.000/pax',
    },
    {
      'waktu': '2 Hari 1 Malam',
      'harga': 'IDR 2.320.000/pax',
    },
    {
      'waktu': '1 Hari',
      'harga': 'IDR 1.320.000/pax',
    }
  ];

  var review = [
    {
      'nama': 'Iksan',
      'rating': '5.0',
      'tanggal': '28 April 2024',
      'deskripsi': '''Lorem ipsum dolor sit amet,
adipiscing elit.''',
    },
    {
      'nama': 'Adriyan',
      'rating': '4.9',
      'tanggal': '28 September 2023',
      'deskripsi': '''Lorem ipsum dolor sit amet,
adipiscing elit. So amazing''',
    },
    {
      'nama': 'Ardika',
      'rating': '5.0',
      'tanggal': '28 April 2024',
      'deskripsi': '''Lorem ipsum dolor sit amet,
adipiscing elit. Kelas cuy''',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/Paket_gili_3H_2M.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.off(() => Home());
                      },
                      child: Image.asset(
                        'images/arrow_back.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 102,
              width: double.infinity,
              color: whiteColor1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10),
                    Text(
                      'Paket Wisata Gili Terawangan',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    Gap(6),
                    Row(
                      children: [
                        Image.asset('images/bintang.png'),
                        Gap(6),
                        Text(
                          'Rating',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Gap(6),
                    Row(
                      children: [
                        Image.asset('images/lokasi.png'),
                        Gap(6),
                        Text(
                          'Gili Indah, Kec. Pemenang, Kabupaten Lombok Utara,\nNusa Tenggara Barat',
                          style: greyTextStyle.copyWith(
                            fontWeight: regular,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: whiteColor1,
              child: TabBar(
                labelColor: primaryColor,
                indicatorColor: secondColor,
                controller: tabController,
                labelStyle: greyTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 14,
                ),
                tabs: [
                  Tab(
                    text: 'Deskripsi',
                  ),
                  Tab(
                    text: 'Paket',
                  ),
                  Tab(
                    text: 'Review',
                  ),
                ],
              ),
            ),
            Container(
              color: whiteColor1,
              width: double.infinity,
              height: 256,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 14,
                          ),
                        ),
                        Gap(10),
                        Container(
                          child: Text(
                            '''Paket Wisata Gili Trawangan adalah pilihan yang sempurna bagi anda yang ingin menikmati pengalaman liburan yang penuh keindahan dan aktivitas bahari menyenangkan.
Mulai dari menginap di Gili Trawangan dan merasakan suasananya yang hidup, hingga menjelajahi kekayaan bawah laut melalui snorkeling di perairan Gili Trawangan, Gili Air, dan Gili Meno.
Dapatkan pengalaman liburan yang tak terlupakan dan nikmati setiap momen secara total dan maksimal bersama MYGUIDE.''',
                            style: greyTextStyle.copyWith(
                              fontWeight: regular,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text('hi'),
                    Text('ya'),
                  ],
                ),
              ),
            ),
            Gap(
              6,
              color: whiteColor2,
            ),
            Container(
              color: whiteColor1,
              width: double.infinity,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Paket',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '   Cek Ketersedian Paket',
                      style: greenTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: paketGili.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 10,
                    ),
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteColor1,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Paket Wisata Gili Terawangan \n${paketGili[index]['waktu']}',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 12,
                                  ),
                                ),
                                GestureDetector(
                                  child: Text(
                                    'Detail',
                                    style: greenTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  onTap: () => Get.off(() => Detail3H2M()),
                                ),
                              ],
                            ),
                            Gap(8),
                            Image.asset('images/crossLine.png'),
                            Gap(8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  paketGili[index]['harga'] ?? '',
                                  style: greyTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 12,
                                  ),
                                ),
                                Container(
                                  height: 28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: primaryColor,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Pilih Paket',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 10,
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
              ),
            ),
            Gap(10),
            Container(
              height: 240,
              width: double.infinity,
              color: whiteColor1,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 24,
                  bottom: 16,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Review',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 16,
                            ),
                          ),
                          Gap(6),
                          Row(
                            children: [
                              Text(
                                '4.9',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                '/5',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 12,
                                ),
                              ),
                              Gap(4),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bagus',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Dari 3 Review',
                                    style: greyTextStyle.copyWith(
                                      fontWeight: regular,
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                              Gap(212),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                ),
                                iconSize: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: review.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 20 : 10,
                            ),
                            child: Container(
                              width: 316,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: whiteColor2,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 84,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'images/image_1.jpg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Container(
                                    width: 232,
                                    height: 100,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    review[index]['rating'] ??
                                                        '',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                      fontWeight: medium,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  Text(
                                                    '/5',
                                                    style:
                                                        greyTextStyle.copyWith(
                                                      fontWeight: medium,
                                                      fontSize: 10,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                review[index]['tanggal'] ?? '',
                                                style: greyTextStyle.copyWith(
                                                  fontWeight: regular,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            review[index]['nama'] ?? '',
                                            style: blackTextStyle.copyWith(
                                              fontWeight: medium,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Gap(4),
                                          Text(
                                            review[index]['deskripsi'] ?? '',
                                            style: greyTextStyle.copyWith(
                                              fontWeight: regular,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
