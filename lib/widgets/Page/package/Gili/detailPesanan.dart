import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/theme/theme.dart';
// import 'package:slicing/theme/theme.dart';

class DetailPesanan extends StatefulWidget {
  const DetailPesanan({super.key});

  @override
  State<DetailPesanan> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.3,
        maxChildSize: 0.6,
        expand: true,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
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
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
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
                          width: 316,
                          height: 98,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Paket Terpilih'),
                                Text(
                                    'Paket Wisata Gili Terawangan 3 Hari 2 Malam')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
