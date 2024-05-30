import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/controller/authController.dart';
import 'package:slicing/widgets/theme/theme.dart';
import 'package:slicing/Page/auth/login.dart';

class Register extends StatelessWidget {
  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(94),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/myGuide.png'),
                ],
              ),
              Gap(40),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Nama Lengkap',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Gap(6),
                  TextFormField(
                    controller: controller.nama,
                    decoration: InputDecoration(
                      fillColor: whiteColor1,
                      filled: true,
                      hintText: 'Masukan Nama Lengkap',
                      hintStyle: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      constraints: BoxConstraints(maxHeight: 40),
                      contentPadding: EdgeInsets.only(top: 10),
                      prefixIcon: Image.asset('images/iconUsername.png'),
                    ),
                  )
                ],
              ),
              Gap(14),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Nomor HandPhone',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Gap(6),
                  TextFormField(
                    controller: controller.nomor,
                    decoration: InputDecoration(
                      fillColor: whiteColor1,
                      filled: true,
                      hintText: 'Masukan Nomor',
                      hintStyle: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      constraints: BoxConstraints(maxHeight: 40),
                      contentPadding: EdgeInsets.only(top: 10),
                      prefixIcon: Image.asset('images/iconTelepon.png'),
                    ),
                  )
                ],
              ),
              Gap(14),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Password',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Gap(6),
                  TextFormField(
                    controller: controller.pass,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: whiteColor1,
                      filled: true,
                      hintText: 'Masukan Password',
                      hintStyle: greyTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      constraints: BoxConstraints(maxHeight: 40),
                      contentPadding: EdgeInsets.only(top: 10),
                      prefixIcon: Image.asset('images/iconPassword.png'),
                      suffixIcon: Image.asset('images/View_hide.png'),
                    ),
                  )
                ],
              ),
              Gap(14),
              Gap(14),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondColor,
                ),
                child: TextButton(
                  onPressed: () {
                    if (controller.nama.text == '' &&
                        controller.nomor.text == '' &&
                        controller.pass.text == '') {
                      Get.snackbar('Peringatan', 'Belum lengkap');
                    } else {
                      Get.off(() => Login());
                    }
                  },
                  child: Text(
                    'Daftar',
                    style: whiteTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  ),
                ),
              ),
              Gap(14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 84,
                    height: 1,
                    color: greyColor,
                  ),
                  Text(
                    'Lanjutkan Dengan',
                    style: greyTextStyle.copyWith(
                        fontWeight: medium, fontSize: 12),
                  ),
                  Container(
                    width: 84,
                    height: 1,
                    color: greyColor,
                  ),
                ],
              ),
              Gap(14),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: whiteColor1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset('images/googlebutton.png'),
                ),
              ),
              Gap(104),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Dengan mendaftar, saya menyetujui',
                    style: whiteTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Kebijakan Privasi',
                      style: greenTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kembali Ke',
                        style: whiteTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.off(() => Login());
                        },
                        child: Text(
                          'Masuk',
                          style: greenTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
