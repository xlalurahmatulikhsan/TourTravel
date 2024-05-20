import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widgets/Page/package/Gili/detailPesanan.dart';

class Detail3H2M extends StatefulWidget {
  const Detail3H2M({super.key});

  @override
  State<Detail3H2M> createState() => _Detail3H2MState();
}

class _Detail3H2MState extends State<Detail3H2M> {
  var include = [
    'Transportasi AC standar pariwisata antar jemput bandara',
    'Dua malam akomodasi di hotel pilihan (1 kamar untuk 2 orang dan/atau 3 orang jika peserta ganjil) sudah termasuk sarapan di hotel',
    'Satu kali makan siang di hari kedua',
    'Tiket masuk kawasan wisata dan parkir',
    'Private glass bottom boat saat snorkeling di Perairan Gili Trawangan, Meno dan Air di hari kedua',
    'Private speed boat antar jemput Gili Trawangan di hari pertama dan ketiga',
    'Perlengkapan snorkeling',
    'Air mineral selama program',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
        minChildSize: 0.10,
        expand: true,
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
                          'Paket Wisata Terawangan 3 Hari 2 Malam',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'IDR 3.320.000/pax',
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
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: ExpansionTile(
                            title: Text(
                              'Harga Sudah Termasuk',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                            children: include.map((item) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4.0,
                                  horizontal: 16.0,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      size: 12,
                                      color: primaryColor,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        item,
                                        style: blackTextStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
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
                              'Detail Harga Paket',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Informasi detail harga paket...',
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
                              'Itinerary',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Detail3H2M itinerary...',
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
                        Container(
                          height: 2,
                          color: whiteColor2,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: primaryColor,
                            ),
                            child: TextButton(
                              onPressed: () {
                                Get.off(() => DetailPesanan());
                              },
                              child: Text(
                                'Pilih Paket',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  fontSize: 12,
                                ),
                              ),
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
