import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/controllers/radioController.dart';

import 'package:slicing/shared/theme/theme.dart';

void showDetailPemesan(BuildContext context, String email) {
  final RadioController controller = Get.put(RadioController());

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.56,
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
                    padding: EdgeInsets.symmetric(horizontal: 30),
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
                          'Detail Pemesan',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        ),
                        Gap(14),
                        Text(
                          'Isi Formulir ini dengan benar karena e-tiket akan dikirim ke alamat email sesuai data pemesan.',
                          style: greyTextStyle.copyWith(
                            fontWeight: regular,
                            fontSize: 12,
                          ),
                        ),
                        Gap(14),
                        Obx(() {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 1,
                                    groupValue: controller.selectedValue.value,
                                    onChanged: (int? value) {
                                      controller.setSelectedValue(value!);
                                    },
                                  ),
                                  Text(
                                    'Laki-Laki',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 2,
                                    groupValue: controller.selectedValue.value,
                                    onChanged: (int? value) {
                                      controller.setSelectedValue(value!);
                                    },
                                  ),
                                  Text(
                                    'Perempuan',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                        Gap(14),
                        Text(
                          'Nama Lengkap',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                        Gap(8),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Masukan Nama',
                            hintStyle: greyTextStyle.copyWith(
                              fontWeight: regular,
                              fontSize: 12,
                            ),
                            prefixIcon: Image.asset('images/iconUsername.png'),
                            constraints: BoxConstraints(maxHeight: 40),
                          ),
                        ),
                        Gap(14),
                        Text(
                          'Nomor HandPhone',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                        Gap(8),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Masukan Nomor',
                            hintStyle: greyTextStyle.copyWith(
                              fontWeight: regular,
                              fontSize: 12,
                            ),
                            prefixIcon: Image.asset('images/iconTelepon.png'),
                            constraints: BoxConstraints(maxHeight: 40),
                          ),
                        ),
                        Gap(14),
                        Text(
                          'Email',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: whiteColor2,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(
                              email,
                              style: greyTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1,
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                  Gap(28),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: primaryColor,
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Tambahkan logika untuk melanjutkan pembayaran
                        },
                        child: Text(
                          'Simpan',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                      ),
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
