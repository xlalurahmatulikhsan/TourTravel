import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/theme/theme.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return DraggableScrollableSheet(
                  initialChildSize: 0.5,
                  minChildSize: 0.3,
                  maxChildSize: 0.9,
                  builder: (context, scrollController) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Counter in Draggable Bottom Sheet: $_counter',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Text('Show Draggable Bottom Sheet'),
        ),
      ],
    );
  }
}

void showDetailPesanan(
  BuildContext context,
  String paket,
  String harga,
  String tanggal,
  // ignore: no_leading_underscores_for_local_identifiers
  int _counter,
  VoidCallback onIncrement,
  VoidCallback onDecrement,
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
                            Gap(6),
                            Image.asset('images/crossLine.png'),
                            Gap(6),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Center(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: greyColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          tanggal,
                          style: greyTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            size: 10,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    Gap(6),
                    Container(
                      width: double.infinity,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: whiteColor2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tour Saja (Tanpa Hotel)',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                            Gap(6),
                            Image.asset('images/crossLine.png'),
                            Gap(6),
                            Text(
                              'Mulai Dari $harga',
                              style: greyTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
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
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: greyColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'IDR ${int.parse(harga) * _counter}',
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
                              ],
                            ),
                            Gap(106),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: onDecrement,
                                  icon: Image.asset('images/remove.png'),
                                  iconSize: 20,
                                ),
                                Text(
                                  '$_counter',
                                  style: greenTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 14,
                                  ),
                                ),
                                IconButton(
                                  onPressed: onIncrement,
                                  icon: Image.asset('images/add.png'),
                                  iconSize: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(68),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total (${_counter} pax)',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'IDR ${int.parse(harga) * _counter}',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        Gap(6),
                        Container(
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: primaryColor,
                          ),
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
                        ),
                      ],
                    ),
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
