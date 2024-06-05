import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/services/auth_service.dart';
import 'package:slicing/shared/theme/theme.dart';
import 'package:slicing/views/auth/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  dologout() async {
    bool siSucces = await AuthService().logout();
    if (!siSucces) {
      print('Loguttttt=========');
    }
    Get.offAll(LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGrey,
      body: Stack(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            color: primaryColor,
            child: Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
              ),
              child: Text(
                'Akun',
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(80),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor1,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 4),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(4, 0),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Username',
                              style: blackTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 16,
                              ),
                            ),
                            Gap(6),
                            GestureDetector(
                              child: Text(
                                'Edit Detail Akun',
                                style: greenTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 4,
                              color: blackColor,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(
                                  'images/profile.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Gap(20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor1,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Akun',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Ubah Kata Sandi',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.security,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Keamanan',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor1,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.language,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Bahasa',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Mata Uang',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Notifikasi',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Lokasi',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor1,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Pengaturan',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.help,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Pusat Bantuan',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.info,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Tentang',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.privacy_tip_outlined,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Kebijakan Privasi',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.rule,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Syarat dan Ketentuan',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android_rounded,
                              color: greyColor,
                            ),
                            Gap(6),
                            Text(
                              'Lihat Info Perangkat',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(10),
                Text(
                  'Versi 1.0.0',
                  style: greyTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
