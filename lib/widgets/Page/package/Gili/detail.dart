// import 'package:flutter/material.dart';

// class Tes extends StatefulWidget {
//   @override
//   _TesState createState() => _TesState();
// }

// class _TesState extends State<Tes> {
//   PageController _pageController = PageController();

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         children: [
//           FirstPage(
//             onNext: () {
//               _pageController.nextPage(
//                 duration: Duration(milliseconds: 300),
//                 curve: Curves.easeInOut,
//               );
//             },
//           ),
//           SecondPage(
//             onBack: () {
//               _pageController.previousPage(
//                 duration: Duration(milliseconds: 300),
//                 curve: Curves.easeInOut,
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   final VoidCallback onNext;

//   const FirstPage({required this.onNext});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: onNext,
//         child: Text('Go to Second Page'),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   final VoidCallback onBack;

//   const SecondPage({required this.onBack});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: onBack,
//         child: Text('Back to First Page'),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/theme/theme.dart';

void showDraggableSheet(
    BuildContext context, String paket, String harga, List includeItem) {
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
                          'Paket Wisata Gili Terawangan $paket',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          harga,
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
                            children: includeItem.map((item) {
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
