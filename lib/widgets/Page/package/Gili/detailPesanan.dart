import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/theme/theme.dart';
// import 'package:slicing/widgets/controller/counter.dart';
import 'package:slicing/widgets/controller/controller.dart';

class Test extends StatelessWidget {
  final PackageController controller = Get.put(PackageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) {
                return DraggableScrollableSheet(
                  initialChildSize: 0.7,
                  minChildSize: 0.3,
                  maxChildSize: 1,
                  builder: (context, scrollController) {
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
                        child: Column(
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
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Detail Pesanan',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Gap(14),
                                  Container(
                                    height: 100,
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
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pilih Paket',
                                            style: greyTextStyle.copyWith(
                                              fontWeight: regular,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'paketan',
                                            style: blackTextStyle.copyWith(
                                              fontWeight: bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Gap(6),
                                          Image.asset('images/crossLine.png'),
                                          Gap(6),
                                          Text(
                                            'Gratis umur 3 tahun kebawah \nDiscount 50% umur 4 - 9 tahun',
                                            style: greenTextStyle.copyWith(
                                              fontWeight: semiBold,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Gap(14),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tanggal Kunjungan',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: medium,
                                          fontSize: 12,
                                        ),
                                      ),
                                      GestureDetector(
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
                                  Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: greyColor,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '31 September',
                                        style: greyTextStyle.copyWith(
                                          fontWeight: medium,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Gap(14),
                                  GestureDetector(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Pilihan Paket',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: medium,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(8),
                                  Container(
                                    height: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: whiteColor2,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Tour Saja (Tanpa Hotel)',
                                            style: blackTextStyle.copyWith(
                                              fontWeight: medium,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Gap(4),
                                          Image.asset('images/crossLine.png'),
                                          Gap(4),
                                          Row(
                                            children: [
                                              Text(
                                                'Mulai Dari IDR price',
                                                style: greyTextStyle.copyWith(
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
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: greyColor,
                                          width: 2,
                                        )),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 12,
                                      ),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'IDR price',
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
                                              Gap(174),
                                              Row(
                                                children: [
                                                  Icon(Icons.remove),
                                                  Gap(2),
                                                  Text(
                                                    '30',
                                                    style:
                                                        greenTextStyle.copyWith(
                                                      fontWeight: medium,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Gap(2),
                                                  Icon(Icons.add),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(68),
                            Container(
                              height: 86,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: greyColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Gap(10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total (30 pax):',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: medium,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          'IDR pricetotal',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: medium,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(6),
                                    Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: primaryColor,
                                        ),
                                        child: Center(
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
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Text('Show Cart'),
        ),
      ),
    );
  }
}

void showDragDetailPesanan(context, String paket, String price) {
  final PackageController controller = Get.put(PackageController());
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Obx(() {
                    return ListView.builder(
                      controller: scrollController,
                      itemCount: controller.paketGiliTerawangan.length,
                      itemBuilder: (context, index) {
                        final item = controller.paketGiliTerawangan[index];
                        return ListTile(
                          title: Text(paket),
                          subtitle:
                              Text('Price: \$${item.price.toStringAsFixed(2)}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () =>
                                    controller.decrementQuantityA(item),
                              ),
                              Obx(() => Text('${item.quantity}',
                                  style: TextStyle(fontSize: 20))),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () =>
                                    controller.incrementQuantityA(item),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }),
                ),
                Obx(() {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Total: \$${controller.totalA.value.toStringAsFixed(2)}',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
              ],
            ),
          );
        },
      );
    },
  );
}
