import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/services/auth_service.dart';
import 'package:slicing/shared/util/loading_dialog.dart';
import 'package:slicing/views/auth/forgetPass.dart';
import 'package:slicing/views/auth/login.dart';
import 'package:slicing/views/widgets/button_constum.dart';
import 'package:slicing/views/widgets/form_costum.dart';
import 'package:slicing/shared/theme/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisible = true;
  String? name;
  String? email;
  String? password;
  String? emailReady;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  doregister() async {
    bool isValid = formkey.currentState!.validate();
    if (isValid) {
      showLoadingDialog(context);
      bool isSucess = await AuthService().register(
        name: name!,
        email: email!,
        password: password!,
      );
      if (!isSucess) {
        Navigator.of(context).pop();
        Get.snackbar("Failed", "Email Sudah Terdaftar");
        return;
      }
      Navigator.of(context).pop();
      Get.offAll(LoginPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Daftar.png'),
                ],
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    FormCostum(
                      onChanged: (value) {
                        name = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Nama tidak boleh kosong";
                        }
                        return null;
                      },
                      obscureText: false,
                      title: "Name",
                      hintText: "Nama lengkap",
                      prefixIcon: Icons.person,
                    ),
                    const Gap(14),
                    FormCostum(
                      onChanged: (value) {
                        email = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email tidak boleh kosong";
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Silakan isi alamat email dengan benar';
                        }
                        return null;
                      },
                      obscureText: false,
                      title: "Email",
                      hintText: "email@example.com",
                      prefixIcon: Icons.email,
                    ),
                    const Gap(14),
                    FormCostum(
                      onChanged: (value) {
                        password = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password tidak boleh kosong";
                        }
                        if (value.length < 6) {
                          return 'Password minimal harus 6 karakter';
                        }
                        return null;
                      },
                      title: "Password",
                      hintText: '*********',
                      prefixIcon: Icons.lock,
                      obscureText: (passwordVisible),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: secondColor,
                          size: 22,
                        ),
                      ),
                    ),
                    const Gap(24),
                    ButtonCostum(
                      onPressed: () {
                        return doregister();
                      },
                      color: secondColor,
                      child: Text(
                        'Daftar',
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 16),
                      ),
                    ),
                    const Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 1,
                          color: greyColor,
                        ),
                        Text(
                          'Atau Lanjutkan Dengan',
                          style: greyTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                        Container(
                          width: 60,
                          height: 1,
                          color: greyColor,
                        ),
                      ],
                    ),
                    const Gap(14),
                    ButtonCostum(
                        onPressed: () {
                          print('object');
                        },
                        color: Colors.white,
                        child: Image.asset('assets/images/googlebutton.png')),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dengan mendaftar, saya menyetujui',
                    style: whiteTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                    ),
                  ),
                  const Gap(4),
                  TextButtonCostum(
                    text: 'Kebijakan Privasi',
                    onTap: () {
                      Get.off(() => const ForgetPass());
                    },
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah Punya Akun?',
                        style: whiteTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      TextButtonCostum(
                          onTap: () {
                            Get.off(() => const LoginPage());
                          },
                          text: "Masuk")
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
