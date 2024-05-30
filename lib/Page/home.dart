import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:slicing/Page/package/Gili/paketGiliAir.dart';
import 'package:slicing/Page/package/Gili/paketGiliTerawangan.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:slicing/widgets/theme/theme.dart';
import 'package:slicing/controller/controller.dart';

import 'package:gap/gap.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PackageController controller = Get.put(PackageController());

  int currentIndex = 0;

  final CarouselController carouselController = CarouselController();

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
                                prefixIcon: Icon(
                                  Icons.search,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.mark_email_unread_outlined,
                          ),
                        ],
                      ),
                      Gap(14),
                    ],
                  ),
                ),
                Obx(() {
                  final images = controller.slider;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        child: CarouselSlider(
                          items: images.map((image) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  image: NetworkImage(image.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: 316,
                            );
                          }).toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            height: 200,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Gap(20),
                      AnimatedSmoothIndicator(
                        activeIndex: currentIndex,
                        count: images.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: primaryColor,
                          dotHeight: 8,
                          dotWidth: 10,
                        ),
                      ),
                    ],
                  );
                }),
                Gap(20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
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
                          color: primaryColor,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
                Gap(10),
                Obx(() {
                  final items = controller.destinasi;
                  return SizedBox(
                    height: 196,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 20 : 10,
                            bottom:
                                10, // Tambahkan jarak ke bawah untuk memperjelas bayangan
                          ),
                          child: GestureDetector(
                            onTap: () {
                              if (item.namaTempat == 'Gili Terawangan') {
                                Get.off(() => WisataPage());
                              } else {
                                SnackBar(content: Text('page ini kosong'));
                              }
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
                                          item.image,
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
                                              item.namaTempat,
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
                                                  item.averageRating.toString(),
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
                                            Icon(Icons.location_pin, size: 12),
                                            Gap(6),
                                            Text(
                                              item.lokasi,
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
                  );
                }),
                Gap(20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
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
                          color: primaryColor,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
                Gap(10),
                Obx(() {
                  final items = controller.destinasi;
                  return SizedBox(
                    height: 196,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 20 : 10,
                            bottom:
                                10, // Tambahkan jarak ke bawah untuk memperjelas bayangan
                          ),
                          child: GestureDetector(
                            onTap: () {
                              if (item.namaTempat == 'Gili Terawangan') {
                                Get.off(() => WisataPage());
                              } else if (item.namaTempat == 'Gili Air') {
                                Get.off(() => WisataPage());
                              }
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
                                          item.image,
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
                                              item.namaTempat,
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
                                                  item.averageRating.toString(),
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
                                            Icon(Icons.location_pin, size: 12),
                                            Gap(6),
                                            Text(
                                              item.lokasi,
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
                  );
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
