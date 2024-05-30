import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/widgets/theme/theme.dart';

class PesanPaketScreen extends StatelessWidget {
  final String paket;
  final String image;
  final int jumlahPaket;
  final String keterangan;
  final String tanggalPesan;
  final String namaPemesan;
  final String nomerPemesan;
  final String emailPemesan;
  final String totalPrice;

  PesanPaketScreen({
    required this.paket,
    required this.image,
    required this.jumlahPaket,
    required this.keterangan,
    required this.tanggalPesan,
    required this.namaPemesan,
    required this.nomerPemesan,
    required this.emailPemesan,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: whiteColor1,
          child: Column(
            children: [
              Gap(30),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context).pop();
                        Get.back(canPop: true);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      ),
                    ),
                    Gap(36),
                    Text(
                      'Selesaikan Pembayaran',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(40),
              Container(
                height: 2,
                color: whiteColor2,
              ),
              Gap(34),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: AssetImage('$image'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap(6),
                        Expanded(
                          child: Text(
                            'paket Wisata $paket',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 1,
                        color: greyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'paket',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                        Gap(6),
                        CircleAvatar(
                          backgroundColor: blackColor,
                          radius: 4,
                        ),
                        Gap(6),
                        Text(
                          '$jumlahPaket Pax',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 1,
                        color: greyColor,
                      ),
                    ),
                    Text(
                      keterangan,
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 1,
                        color: greyColor,
                      ),
                    ),
                    Text(
                      'Tanggal Yang Di Pilih',
                      style: greyTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      tanggalPesan,
                      style: blackTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(18),
              Container(
                height: 146,
                width: double.infinity,
                color: whiteColor2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(10),
                      Text(
                        'Detail Pemesan',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 14,
                        ),
                      ),
                      Gap(10),
                      Container(
                        height: 88,
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
                              offset: Offset(0, 0),
                              blurRadius: 6,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                namaPemesan,
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 12,
                                ),
                              ),
                              Gap(4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    nomerPemesan,
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ],
                              ),
                              Gap(4),
                              Text(
                                emailPemesan,
                                style: greyTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 86,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: greyColor,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR $totalPrice',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                      ),
                      Gap(6),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: primaryColor,
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              // Tambahkan logika untuk melanjutkan pembayaran
                            },
                            child: Text(
                              'Lanjutkan Pembayaran',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
