import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/theme/theme.dart';

void showDetailPesanan(
  BuildContext context,
  String paket,
  String harga,
  String tanggal,
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
                            Image.asset('images/crossLine.png'),
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
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        itemCount: tanggal.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: whiteColor1,
                                  border: Border.all(
                                    color:
                                        tanggal == 0 ? primaryColor : greyColor,
                                    width: 2,
                                  )),
                              child: Text(
                                tanggal,
                                style: tanggal == 0
                                    ? greenTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 12)
                                    : greyTextStyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 12,
                                      ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(14),
                    Row(
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
                            size: 5,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    Gap(8),
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
