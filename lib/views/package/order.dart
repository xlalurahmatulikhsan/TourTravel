import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/shared/theme/theme.dart';

class MyOrder extends StatelessWidget {
  final String image;
  final String paket;
  final int jumlahPaket;
  final String keterangan;
  final String tanggalPesan;

  MyOrder({
    required this.image,
    required this.paket,
    required this.jumlahPaket,
    required this.keterangan,
    required this.tanggalPesan,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white60,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paket Wisata $paket',
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
                      radius: 4,
                    ),
                    Gap(6),
                    Text(
                      '$jumlahPaket pax',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Gap(6),
                Text(
                  keterangan,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
                Gap(6),
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
        ),
      ),
    );
  }
}
