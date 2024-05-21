import 'package:flutter/material.dart';
import 'package:slicing/theme/theme.dart';

class TesWidgets extends StatefulWidget {
  const TesWidgets({super.key});

  @override
  State<TesWidgets> createState() => _TesWidgetsState();
}

class _TesWidgetsState extends State<TesWidgets> {
  var paketGili = [
    {
      'paket': '3 Hari 2 Malam',
      'harga': 'IDR 3.320.000/pax',
    },
    {
      'paket': '2 Hari 1 Malam',
      'harga': 'IDR 2.320.000/pax',
    },
    {
      'paket': '1 Hari',
      'harga': 'IDR 1.320.000/pax',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: paketGili.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 200,
                color: whiteColor1,
                child: Column(
                  children: [
                    Text(
                      paketGili[index]['paket']!,
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      paketGili[index]['harga']!,
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Pilih Paket',
                        style: greenTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
