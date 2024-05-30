import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/widgets/theme/theme.dart';
import 'package:slicing/Page/home.dart';
import 'package:slicing/Page/package/detail.dart';
import 'package:slicing/Page/package/detailPesanan.dart';
import 'package:slicing/controller/controller.dart';

class WisataPage extends StatelessWidget {
  final PackageController controller = Get.put(PackageController());
  final ButtonController buttonController = Get.put(ButtonController());

  @override
  Widget build(BuildContext context) {
    final scroll = ScrollController();
    // final item = controller.paketGiliTerawangan;
    return Scaffold(
      backgroundColor: whiteColor2,
      body: SingleChildScrollView(
        controller: scroll,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/image_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  right: 330,
                  bottom: 250,
                ),
                child: IconButton(
                  onPressed: () {
                    Get.off(() => Home());
                  },
                  icon: Image.asset(
                    'images/arrow_back.png',
                  ),
                ),
              ),
            ),
            Obx(() {
              if (controller.destinasi.isEmpty) {
                return Center(child: Text('Tidak ada wisata tersedia.'));
              }
              final item = controller.destinasi[0];
              return Container(
                width: double.infinity,
                color: whiteColor1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paket Wisata ${item.namaTempat}',
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
                          Row(
                            children: [
                              Text(
                                item.averageRating.toString(),
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '/5',
                                style: greyTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          Gap(4),
                          Text(
                            '(Review & Foto)',
                            style: greyTextStyle.copyWith(
                              fontWeight: regular,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Gap(6),
                      GestureDetector(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('images/iconLokasi.png'),
                                Gap(6),
                                Text(
                                  item.lokasi,
                                  style: greyTextStyle.copyWith(
                                    fontWeight: regular,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                              size: 16,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
            Container(
              height: 40,
              color: whiteColor1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildTabItem(0, 'Deskripsi', scroll),
                  _buildTabItem(1, 'Paket', scroll),
                  _buildTabItem(2, 'Review', scroll),
                ],
              ),
            ),
            Obx(() {
              //deskripsi
              if (controller.destinasi.isEmpty) {
                return Center(child: Text('Tidak ada wisata tersedia.'));
              }
              final item = controller.destinasi[0];
              return Container(
                color: whiteColor1,
                height: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(10),
                      Text(
                        'Deskripsi',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 14,
                        ),
                      ),
                      Gap(6),
                      Text(
                        item.deskripsi,
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            Gap(6),
            Container(
              height: 70,
              color: whiteColor1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paket',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 14,
                      ),
                    ),
                    Gap(10),
                    GestureDetector(
                      child: Row(
                        children: [
                          Text(
                            'Cek Ketersediaan Paket',
                            style: greenTextStyle.copyWith(
                              fontWeight: regular,
                              fontSize: 12,
                            ),
                          ),
                          Gap(4),
                          Image.asset('images/iconCek.png')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(20),
            SizedBox(
                // ini Paket
                height: 100,
                child: Obx(() {
                  if (controller.paketGiliTerawangan.isEmpty) {
                    Text('paket Kosong');
                  }
                  final items = controller.paketGiliTerawangan;
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 20 : 10,
                        ),
                        child: Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: whiteColor1,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 190,
                                        child: Text(
                                          'Paket Wisata ${item.paket}',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDraggableSheet(
                                            context,
                                            item.paket,
                                            item.price.toString(),
                                          );
                                        },
                                        child: Text(
                                          'Detail',
                                          style: greenTextStyle.copyWith(
                                            fontWeight: medium,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ]),
                                Gap(4),
                                Image.asset('images/crossLine.png'),
                                Gap(4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'IDR ${item.price}/pax',
                                      style: greyTextStyle.copyWith(
                                        fontWeight: semiBold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.totalA.value = 0;
                                        item.quantity.value = 0;
                                        showDragDetailPesanan(
                                          context,
                                          item.paket,
                                          item.price.toString(),
                                          items.indexOf(item),
                                          item.quantity,
                                        );
                                      },
                                      child: Container(
                                        height: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: primaryColor,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                          ),
                                          child: Center(
                                              child: Text(
                                            'Pilih Paket',
                                            style: whiteTextStyle.copyWith(
                                              fontWeight: medium,
                                              fontSize: 10,
                                            ),
                                          )),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                })),
            Gap(10),
            Container(
              //review
              height: 200,
              width: double.infinity,
              color: whiteColor1,
              child: Column(
                children: [
                  Gap(24),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
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
                        Obx(() {
                          final item = controller.destinasi[0];
                          return GestureDetector(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      item.averageRating.toString(),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.ekspresi,
                                          style: blackTextStyle.copyWith(
                                            fontWeight: medium,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Obx(() {
                                          final item =
                                              controller.paketGiliTerawangan;
                                          return Text(
                                            'Dari ${item.length} Review', //tergantung banyak reviewnya
                                            style: greyTextStyle.copyWith(
                                              fontWeight: regular,
                                              fontSize: 10,
                                            ),
                                          );
                                        })
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                )
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Gap(6),
                  Obx(() {
                    final items = controller.paketGiliTerawangan;

                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          final now = DateTime.now();
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 20 : 10,
                            ),
                            child: Container(
                                height: 100,
                                width: 316,
                                decoration: BoxDecoration(
                                  color: whiteColor2,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 84,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            item.review.image,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    item.review.rating
                                                        .toString(),
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
                                                  ),
                                                ],
                                              ),
                                              Gap(130),
                                              Text(
                                                '${now.day}/${now.month}/${now.year}',
                                                style: greyTextStyle.copyWith(
                                                  fontWeight: regular,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Obx(() {
                                            final item = controller.user[index];
                                            return Text(
                                              item.nama,
                                              style: blackTextStyle.copyWith(
                                                fontWeight: medium,
                                                fontSize: 12,
                                              ),
                                            );
                                          }),
                                          Gap(6),
                                          Text(
                                            item.review.saran,
                                            style: greyTextStyle.copyWith(
                                              fontWeight: regular,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          );
                        },
                      ),
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scroll.animateTo(0.0,
              duration: Duration(seconds: 1), curve: Curves.easeInOut);
        },
      ),
    );
  }

  //for button
  Widget _buildTabItem(int index, String title, ScrollController scroll) {
    return GestureDetector(
      onTap: () {
        buttonController.selectButton(index);
        double position = buttonController.scrollPositions[index] ?? 0.0;
        scroll.animateTo(position,
            duration: Duration(seconds: 1), curve: Curves.easeInOut);
      },
      child: Obx(() {
        bool isSelected = buttonController.selectedIndex.value == index;
        Color textColor = isSelected ? whiteColor1 : greyColor;
        // Color borderColor = isSelected ? primaryColor : greyColor;
        Color bgColor = isSelected ? primaryColor : whiteColor1;
        return Container(
          width: 90,
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(
              width: 2,
              color: primaryColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontWeight: regular,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
