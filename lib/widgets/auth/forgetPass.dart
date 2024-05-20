import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widgets/auth/confirPass.dart';
import 'package:slicing/widgets/auth/login.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: IconButton(
                      onPressed: () {
                        Get.off(() => Login());
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: whiteColor1,
                      ),
                    )),
                Gap(84),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'Lupa Password',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Gap(64),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '        Masukkan Nomor HandPhone yang \nterdaftar di myguide, dan lakukan verifikasi \n          untuk membuat password baru.',
                      style: whiteTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Gap(20),
                  Text(
                    'Nomor HandPhone',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  Gap(8),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Image.asset('images/iconTelepon.png'),
                        constraints: BoxConstraints(maxHeight: 40),
                        fillColor: whiteColor1,
                        filled: true,
                        hintText: 'Masukan Nomor yang Sudah Terdaftar',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                  Gap(20),
                  Center(
                    child: Text(
                      'Kamu akan membuat password baru setelah \n                          verifikasi berhasil.',
                      style: whiteTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Gap(20),
                  Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: secondColor),
                      child: TextButton(
                        onPressed: () {
                          Get.off(() => PassKonfirmasi());
                        },
                        child: Text(
                          'Verifikasi',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 14,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
