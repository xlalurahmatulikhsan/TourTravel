import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/controllers/controller.dart';
import 'package:slicing/controllers/radioController.dart';
import 'package:slicing/shared/theme/theme.dart';
import 'package:slicing/views/navigations/main_navigation_view.dart';
import 'package:slicing/views/widgets/form_costum.dart';
// import 'package:slicing/views/widgets/form_costum.dart';

class EditProfile extends StatelessWidget {
  final RadioController controller = Get.put(RadioController());
  final PackageController _controller = Get.put(PackageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(30),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => MainNavigationView());
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                      ),
                      Gap(114),
                      Text(
                        'Edit Profile',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  Gap(34),
                  Text(
                    'Info Pemilik Akun',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  ),
                  Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              value: 1,
                              groupValue: controller.selectedValue.value,
                              onChanged: (int? value) {
                                controller.setSelectedValue(value!);
                              },
                            ),
                            Text(
                              'Laki-Laki',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              value: 2,
                              groupValue: controller.selectedValue.value,
                              onChanged: (int? value) {
                                controller.setSelectedValue(value!);
                              },
                            ),
                            Text(
                              'Perempuan',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
                  GreenForm(
                    title: 'Nama Lengkap',
                    hintText: 'Masukan Nama',
                    prefixIcon: Icon(
                      Icons.person,
                      size: 20,
                      color: primaryColor,
                    ),
                  ),
                  Gap(10),
                  GreenForm(
                    title: 'Tanggal Lahir',
                    hintText: 'Tanggal Lahir',
                    prefixIcon: Icon(
                      Icons.calendar_month,
                      size: 20,
                      color: primaryColor,
                    ),
                  ),
                  Gap(10),
                  Obx(() {
                    return GreenForm(
                      title: 'Email',
                      hintText: _controller.user.first.email,
                      prefixIcon: Icon(
                        Icons.email,
                        size: 20,
                        color: primaryColor,
                      ),
                    );
                  }),
                  Gap(10),
                  GreenForm(
                    title: 'Nomor Ponsel',
                    hintText: '087325766',
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 20,
                      color: primaryColor,
                    ),
                  ),
                  Gap(20),
                ],
              ),
            ),
            Container(
              height: 2,
              color: whiteColor2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Info Identitas',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  ),
                  Gap(20),
                  GreenForm(
                    title: 'Detail Kewarganegaraan',
                    hintText: 'Country',
                  ),
                  Gap(10),
                  GreenForm(
                    title: 'NIK',
                    hintText: 'Masukan NIK',
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              color: whiteColor2,
            ),
            Gap(20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kontak Darurat',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                  Gap(20),
                  GreenForm(
                    title: 'Nama',
                    hintText: 'Masukan Nama',
                    prefixIcon: Icon(
                      Icons.person,
                      size: 20,
                      color: primaryColor,
                    ),
                  ),
                  Gap(10),
                  GreenForm(
                    title: 'Nomor Ponsel',
                    hintText: 'Masukan Nomor Ponsel',
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 20,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
