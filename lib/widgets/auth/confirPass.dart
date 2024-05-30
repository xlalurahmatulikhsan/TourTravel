import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/widgets/theme/theme.dart';
import 'package:slicing/widgets/auth/forgetPass.dart';

class PassKonfirmasi extends StatelessWidget {
  const PassKonfirmasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.off(() => ForgetPass());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: whiteColor1,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Konfirmasi Password',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Gap(64),
            Center(
              child: Text(
                'Mohon isi kolom brikut dengan kode verifikasi yang \n          kami kirim ke 08123337993 melalui SMS.',
                style: whiteTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 12,
                ),
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxWidth: 40,
                          maxHeight: 30,
                        ),
                      ),
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxWidth: 40,
                          maxHeight: 30,
                        ),
                      ),
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxWidth: 40,
                          maxHeight: 30,
                        ),
                      ),
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxWidth: 40,
                          maxHeight: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Kirim Ulang kode verifikasi',
                      style: greenTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12,
                      ),
                    )),
                Text(
                  '1:00',
                  style: whiteTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
