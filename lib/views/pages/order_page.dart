import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
// import 'package:slicing/views/package/order.dart';
import 'package:slicing/controllers/controller.dart';
import 'package:slicing/shared/theme/theme.dart';

class Order extends StatelessWidget {
  final PackageController controller = Get.put(PackageController());
  // int index = PackageController().paketGiliTerawangan.length;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: whiteColor1,
        appBar: AppBar(
          backgroundColor: whiteColor1,
          elevation: 0,
          title: Text(
            'Your Order',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
          bottom: TabBar(
            labelColor: primaryColor,
            labelStyle: greenTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 12,
            ),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: greyTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 14,
            ),
            indicatorColor: primaryColor,
            tabs: [
              Tab(text: 'Paket Aktif'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(30),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                          image: AssetImage(
                            'images/image_1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white60,
                          ),
                          child: Obx(() {
                            // final indexPaket= index % controller.paketGiliTerawangan.length;
                            final item = controller.paketGiliTerawangan[0];
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Paket Wisata ${item.paket}',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Gap(6),
                                  Row(
                                    children: [
                                      Text(
                                        'Paket',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: medium,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Gap(6),
                                      CircleAvatar(
                                        backgroundColor: blackColor,
                                        radius: 2,
                                      ),
                                      Gap(6),
                                      Text(
                                        '${item.quantity} pax',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: medium,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(6),
                                  Text(
                                    'Tour Saja (Tanpa Hotel)',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Gap(6),
                                  Text(
                                    'Minggu, 28 September 2024',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: regular,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 80,
              height: 80,
              child: Text('Adriyan'),
            )
          ],
        ),
      ),
    );
  }
}
