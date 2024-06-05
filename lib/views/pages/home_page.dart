import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:slicing/views/package/Gili/paketGiliTerawangan.dart';
import 'package:slicing/views/widgets/form_costum.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:slicing/shared/theme/theme.dart';
import 'package:slicing/controllers/controller.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    '#Nikmati Liburan Impianmu Sekarang Juga!',
                    style: whiteTextStyle2.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  const Gap(14),
                  const Row(
                    children: [
                      Expanded(child: FormSearch()),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.mark_email_unread_outlined,
                        color: whiteColor1,
                        size: 24,
                      ),
                    ],
                  ),
                  const Gap(20),
                ],
              ),
            ),
            // banner
            Obx(() {
              final images = controller.slider;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 180,
                    child: CarouselSlider(
                      items: images.map((image) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage(image.image),
                              fit: BoxFit.cover,
                            ),
                          ),
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
                  const Gap(10),
                  AnimatedSmoothIndicator(
                    activeIndex: currentIndex,
                    count: images.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: whiteColor1,
                      dotHeight: 8,
                      dotWidth: 10,
                    ),
                  ),
                ],
              );
            }),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Paket Wisata Di Lombok',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 14,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: whiteColor1,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
            const Gap(10),
            Obx(() {
              final items = controller.paketWisata;
              return SizedBox(
                height: 190,
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
                          if (item.wisataName == 'Gili Terawangan') {
                            Get.to(() => PaketGiliTerawangan());
                          } else {
                            const SnackBar(content: Text('page ini kosong'));
                          }
                        },
                        child: Container(
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors
                                .white, // Ubah warna latar belakang agar bayangan lebih jelas
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0,
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(4, 0),
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
                                  borderRadius: const BorderRadius.only(
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
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item.wisataName,
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
                                              item.rating.toString(),
                                              style: blackTextStyle.copyWith(
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Paket Wisata Di Sumbawa',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 14,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: whiteColor1,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
            Gap(10),
            Obx(() {
              final items = controller.paketWisata;
              return SizedBox(
                height: 190,
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
                          if (item.wisataName == 'Gili Terawangan') {
                            Get.off(() => PaketGiliTerawangan());
                          } else {
                            const SnackBar(content: Text('page ini kosong'));
                          }
                        },
                        child: Container(
                          width: 190,
                          // height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors
                                .white, // Ubah warna latar belakang agar bayangan lebih jelas
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0,
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(4, 0),
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
                                  borderRadius: const BorderRadius.only(
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
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item.wisataName,
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
                                              item.rating.toString(),
                                              style: blackTextStyle.copyWith(
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
          ],
        ),
      ),
    );
  }
}
