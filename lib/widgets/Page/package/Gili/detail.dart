import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widgets/controller/controller.dart';

void showDraggableSheet(
  BuildContext context,
  String paket,
  String harga,
) {
  final PackageController controller = Get.put(PackageController());

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
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                          '$paket',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'IDR $harga/pax',
                          style: greyTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(14),
                  Container(
                    height: 2,
                    color: whiteColor2,
                  ),
                  Expanded(
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ExpansionTile(
                            title: Text(
                              'Harga Sudah Termasuk',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                            // children: includeItem.map((item) {
                            //   return Padding(
                            //     padding: const EdgeInsets.symmetric(
                            //       vertical: 4.0,
                            //       horizontal: 16.0,
                            //     ),
                            //     child: Row(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Icon(
                            //           Icons.check,
                            //           size: 12,
                            //           color: primaryColor,
                            //         ),
                            //         SizedBox(width: 8),
                            //         Expanded(
                            //           child: Text(
                            //             item,
                            //             style: blackTextStyle.copyWith(
                            //               fontSize: 14,
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   );
                            // }).toList(),
                          ),
                        ),
                        Gap(14),
                        Container(
                          height: 2,
                          color: whiteColor2,
                        ),
                        Gap(14),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ExpansionTile(
                            title: Text(
                              'Syarat dan Ketentuan',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Syarat dan ketentuan...',
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(14),
                        Container(
                          height: 2,
                          color: whiteColor2,
                        ),
                        Gap(14),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ExpansionTile(
                            title: Text(
                              'Informasi Tambahan',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Informasi tambahan...',
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(14),
                        Container(
                          height: 2,
                          color: whiteColor2,
                        ),
                        Gap(14),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ExpansionTile(
                            title: Text(
                              'Paket A',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                            children:
                                controller.paketGiliTerawangan.map((item) {
                              return ListTile(
                                title: Text(item.paketan),
                                subtitle: Text(
                                    'Price: \$${item.price.toStringAsFixed(2)}'),
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
                            }).toList(),
                          ),
                        ),
                        Gap(14),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Obx(() {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Paket A: \$${controller.totalA.value.toStringAsFixed(2)}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
