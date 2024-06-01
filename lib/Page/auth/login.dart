import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/Page/home_page.dart';
import 'package:slicing/controller/authController.dart';
import 'package:slicing/widgets/theme/theme.dart';
import 'package:slicing/Page/auth/forgetPass.dart';
import 'package:slicing/Page/auth/register.dart';

class Login extends StatelessWidget {
  final SignInController controller = Get.put(SignInController());

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
                  Image.asset('images/masuk.png'),
                ],
              ),
              Gap(40),
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
                    obscureText: true,
                    controller: controller.pass,
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
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondColor,
                ),
                child: TextButton(
                  onPressed: () {
                    if (controller.nomor.text == '' &&
                        controller.pass.text == '') {
                      Get.snackbar("Peringatan", "Tidak Boleh Kosong");
                      return;
                    } else {
                      Get.off(() => Home());
                    }
                    ;
                  },
                  child: Text(
                    'Masuk',
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
              Gap(214),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.off(() => ForgetPass());
                    },
                    child: Text(
                      'Lupa Password?',
                      style: greenTextStyle.copyWith(
                          fontWeight: medium, fontSize: 12),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah Mempunyai Akun?',
                        style: whiteTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.off(() => Register());
                        },
                        child: Text(
                          'Daftar',
                          style: greenTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
