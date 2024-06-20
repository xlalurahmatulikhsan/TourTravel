import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/services/auth_service.dart';
import 'package:slicing/shared/util/loading_dialog.dart';
import 'package:slicing/views/navigations/main_navigation_view.dart';
import 'package:slicing/views/auth/forgetPass.dart';
import 'package:slicing/views/auth/register.dart';
import 'package:slicing/views/widgets/button_constum.dart';
import 'package:slicing/views/widgets/form_costum.dart';
import 'package:slicing/shared/theme/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = true;
  String? email;
  String? password;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  dologin() async {
    bool isValid = formkey.currentState!.validate();
    if (isValid) {
      showLoadingDialog(context);
      bool isSucces =
          await AuthService().login(email: email!, password: password!);
      if (!isSucces) {
        Navigator.of(context).pop();
        Get.snackbar("Failed", "Wrong Email or Password");
        return;
      }
      Navigator.of(context).pop();
      Get.offAll(MainNavigationView());
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
                  Image.asset('assets/images/masuk.png'),
                ],
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    FormCostum(
                      onChanged: (value) {
                        email = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email masih kosong";
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
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const Gap(14),
                    FormCostum(
                      onChanged: (value) {
                        password = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password masih kosong";
                        }
                        if (value.length < 6) {
                          return 'Password minimal harus 6 karakter';
                        }
                        return null;
                      },
                      title: "Password",
                      hintText: 'Masukan Password',
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
                        return dologin();
                      },
                      color: secondColor,
                      child: Text(
                        'Masuk',
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
                  TextButtonCostum(
                    text: 'Lupa Password?',
                    onTap: () {
                      Get.off(() => const ForgetPass());
                    },
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum Punya Akun?',
                        style: whiteTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      TextButtonCostum(
                          onTap: () {
                            Get.to(() => const RegisterPage());
                          },
                          text: "Daftar")
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
